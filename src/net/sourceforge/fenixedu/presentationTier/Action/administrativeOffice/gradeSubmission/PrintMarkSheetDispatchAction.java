package net.sourceforge.fenixedu.presentationTier.Action.administrativeOffice.gradeSubmission;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.fenixedu.applicationTier.Filtro.exception.FenixFilterException;
import net.sourceforge.fenixedu.applicationTier.Servico.exceptions.FenixServiceException;
import net.sourceforge.fenixedu.applicationTier.Servico.exceptions.NotAuthorizedException;
import net.sourceforge.fenixedu.applicationTier.Servico.exceptions.UnableToPrintServiceException;
import net.sourceforge.fenixedu.domain.CurricularCourse;
import net.sourceforge.fenixedu.domain.DegreeCurricularPlan;
import net.sourceforge.fenixedu.domain.Employee;
import net.sourceforge.fenixedu.domain.ExecutionSemester;
import net.sourceforge.fenixedu.domain.MarkSheet;
import net.sourceforge.fenixedu.injectionCode.AccessControl;
import net.sourceforge.fenixedu.presentationTier.Action.resourceAllocationManager.utils.ServiceUtils;
import net.sourceforge.fenixedu.util.StringUtils;

import org.apache.commons.collections.comparators.ReverseComparator;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.util.LabelValueBean;

public class PrintMarkSheetDispatchAction extends MarkSheetDispatchAction {

    public ActionForward searchMarkSheet(ActionMapping mapping, ActionForm actionForm, HttpServletRequest request,
	    HttpServletResponse response) {
	return mapping.findForward("searchMarkSheet");
    }

    public ActionForward choosePrinterMarkSheetsWeb(ActionMapping mapping, ActionForm actionForm, HttpServletRequest request,
	    HttpServletResponse response) {
	return choosePrinterMarkSheetsWeb(mapping, actionForm, request, response,
		ExecutionSemester.readActualExecutionSemester(), null);
    }

    public ActionForward choosePrinterMarkSheetsWebPostBack(ActionMapping mapping, ActionForm actionForm,
	    HttpServletRequest request, HttpServletResponse response) {
	final DynaActionForm form = (DynaActionForm) actionForm;

	final ExecutionSemester executionSemester = getExecutionSemester(form);
	final DegreeCurricularPlan degreeCurricularPlan = getDegreeCurricularPlan(form);

	return choosePrinterMarkSheetsWeb(mapping, actionForm, request, response, executionSemester, degreeCurricularPlan);
    }

    private ExecutionSemester getExecutionSemester(DynaActionForm form) {
	return rootDomainObject.readExecutionSemesterByOID(Integer.valueOf(form.getString("ecID")));
    }

    private DegreeCurricularPlan getDegreeCurricularPlan(DynaActionForm form) {
	final Integer dcpID = (!StringUtils.isEmpty(form.getString("dcpID")) ? Integer.valueOf(form.getString("dcpID")) : null);
	return dcpID != null ? rootDomainObject.readDegreeCurricularPlanByOID(dcpID) : null;
    }

    private ActionForward choosePrinterMarkSheetsWeb(ActionMapping mapping, ActionForm actionForm, HttpServletRequest request,
	    HttpServletResponse response, ExecutionSemester executionSemester, DegreeCurricularPlan degreeCurricularPlan) {

	DynaActionForm form = (DynaActionForm) actionForm;
	setPrinterNames(request);

	final Employee employee = AccessControl.getPerson().getEmployee();

	final Collection<MarkSheet> webMarkSheetsNotPrinted = executionSemester.getWebMarkSheetsNotPrinted(employee
		.getAdministrativeOffice(), degreeCurricularPlan, employee.getCurrentCampus());

	request.setAttribute("executionPeriod", executionSemester);
	request.setAttribute("curricularCourseMap", buildMapWithCurricularCoursesAndNumberOfMarkSheets(webMarkSheetsNotPrinted));
	request.setAttribute("totalMarkSheetsCount", webMarkSheetsNotPrinted.size());

	buildPeriods(request);
	buildDegreeCurricularPlans(request, employee, executionSemester);

	form.set("ecID", executionSemester.getIdInternal().toString());
	if (degreeCurricularPlan != null) {
	    form.set("dcpID", degreeCurricularPlan.getIdInternal().toString());
	}

	return mapping.findForward("choosePrinterMarkSheetsWeb");
    }

    private void buildDegreeCurricularPlans(HttpServletRequest request, Employee employee, ExecutionSemester semester) {

	final List<DegreeCurricularPlan> dcps = new ArrayList<DegreeCurricularPlan>(semester.getExecutionYear()
		.getDegreeCurricularPlans());
	Collections.sort(dcps, DegreeCurricularPlan.COMPARATOR_BY_PRESENTATION_NAME);

	final List<LabelValueBean> result = new ArrayList<LabelValueBean>();
	for (final DegreeCurricularPlan dcp : dcps) {

	    if (dcp.getCurrentCampus() == employee.getCurrentCampus()
		    && dcp.getDegreeType().getAdministrativeOfficeType() == employee.getAdministrativeOffice()
			    .getAdministrativeOfficeType()) {
		result.add(new LabelValueBean(dcp.getPresentationName(semester.getExecutionYear()), dcp.getIdInternal()
			.toString()));
	    }
	}

	request.setAttribute("degreeCurricularPlans", result);
    }

    private void buildPeriods(HttpServletRequest request) {
	final List<ExecutionSemester> notClosedExecutionPeriods = ExecutionSemester.readNotClosedExecutionPeriods();
	Collections.sort(notClosedExecutionPeriods, new ReverseComparator(ExecutionSemester.COMPARATOR_BY_SEMESTER_AND_YEAR));

	final List<LabelValueBean> periods = new ArrayList<LabelValueBean>();
	for (final ExecutionSemester period : notClosedExecutionPeriods) {
	    periods.add(new LabelValueBean(period.getExecutionYear().getYear() + " - " + period.getName(), period.getIdInternal()
		    .toString()));
	}

	request.setAttribute("periods", periods);
    }

    private void setPrinterNames(HttpServletRequest request) {
	String[] printerNames = AccessControl.getPerson().getEmployee().getCurrentWorkingPlace()
		.getPrinterNamesByFunctionalityName("markSheet");
	request.setAttribute("printerNames", Arrays.asList(printerNames));
    }

    private Map<CurricularCourse, Integer> buildMapWithCurricularCoursesAndNumberOfMarkSheets(
	    Collection<MarkSheet> webMarkSheetsNotPrinted) {
	final Map<CurricularCourse, Integer> result = new TreeMap<CurricularCourse, Integer>(new Comparator<CurricularCourse>() {
	    public int compare(CurricularCourse o1, CurricularCourse o2) {
		return o1.getName().compareTo(o2.getName());
	    }
	});
	for (final MarkSheet markSheet : webMarkSheetsNotPrinted) {
	    Integer markSheetNumber = result.get(markSheet.getCurricularCourse());
	    result.put(markSheet.getCurricularCourse(), (markSheetNumber == null) ? Integer.valueOf(1) : Integer
		    .valueOf(markSheetNumber.intValue() + 1));
	}
	return result;
    }

    public ActionForward choosePrinterMarkSheet(ActionMapping mapping, ActionForm actionForm, HttpServletRequest request,
	    HttpServletResponse response) {
	DynaActionForm form = (DynaActionForm) actionForm;
	setPrinterNames(request);
	if (form.get("markSheet") == null || form.getString("markSheet").length() == 0) {
	    form.set("markSheet", request.getAttribute("markSheet"));
	}
	return mapping.findForward("choosePrinterMarkSheet");
    }

    public ActionForward printMarkSheets(ActionMapping mapping, ActionForm actionForm, HttpServletRequest request,
	    HttpServletResponse response) throws FenixFilterException, FenixServiceException {
	DynaActionForm form = (DynaActionForm) actionForm;
	String markSheet = form.getString("markSheet");
	if (markSheet.equals("all")) {
	    return printWebMarkSheets(mapping, actionForm, request, response);
	} else {
	    return printMarkSheet(mapping, actionForm, request, response);
	}
    }

    private ActionForward printMarkSheet(ActionMapping mapping, ActionForm actionForm, HttpServletRequest request,
	    HttpServletResponse response) throws FenixFilterException, FenixServiceException {
	DynaActionForm form = (DynaActionForm) actionForm;
	String printerName = form.getString("printerName");
	String markSheetString = form.getString("markSheet");
	MarkSheet markSheet = rootDomainObject.readMarkSheetByOID(Integer.valueOf(markSheetString));
	ActionMessages actionMessages = new ActionMessages();
	try {
	    ServiceUtils.executeService("PrintMarkSheet", new Object[] { markSheet, printerName });
	} catch (NotAuthorizedException e) {
	    addMessage(request, actionMessages, "error.notAuthorized");
	    return mapping.getInputForward();
	} catch (UnableToPrintServiceException e) {
	    request.setAttribute("markSheet", markSheetString);
	    addMessage(request, actionMessages, e.getMessage());
	    return choosePrinterMarkSheet(mapping, actionForm, request, response);
	}
	return mapping.findForward("searchMarkSheetFilled");
    }

    private ActionForward printWebMarkSheets(ActionMapping mapping, ActionForm actionForm, HttpServletRequest request,
	    HttpServletResponse response) throws FenixFilterException, FenixServiceException {

	final DynaActionForm form = (DynaActionForm) actionForm;
	final String printerName = form.getString("printerName");

	final ActionMessages actionMessages = new ActionMessages();

	try {
	    final Employee employee = AccessControl.getPerson().getEmployee();
	    ServiceUtils.executeService("PrintMarkSheets", new Object[] {
		    getExecutionSemester(form).getWebMarkSheetsNotPrinted(employee.getAdministrativeOffice(),
			    getDegreeCurricularPlan(form), employee.getCurrentCampus()), printerName });
	} catch (NotAuthorizedException e) {
	    addMessage(request, actionMessages, "error.notAuthorized");
	    return mapping.getInputForward();
	} catch (UnableToPrintServiceException e) {
	    addMessage(request, actionMessages, e.getMessage());
	    return choosePrinterMarkSheetsWeb(mapping, actionForm, request, response);
	}
	return mapping.getInputForward();
    }

}
