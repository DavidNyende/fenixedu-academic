/*
 * Interface.java
 * 
 * Created on 19 de Agosto de 2002, 1:09
 */


package net.sourceforge.fenixedu.persistenceTier;


import net.sourceforge.fenixedu.persistenceTier.OJB.gaugingTests.physics.IPersistentGaugingTestResult;
import net.sourceforge.fenixedu.persistenceTier.Seminaries.IPersistentSeminary;
import net.sourceforge.fenixedu.persistenceTier.Seminaries.IPersistentSeminaryCandidacy;
import net.sourceforge.fenixedu.persistenceTier.Seminaries.IPersistentSeminaryCaseStudy;
import net.sourceforge.fenixedu.persistenceTier.Seminaries.IPersistentSeminaryCaseStudyChoice;
import net.sourceforge.fenixedu.persistenceTier.Seminaries.IPersistentSeminaryCurricularCourseEquivalency;
import net.sourceforge.fenixedu.persistenceTier.Seminaries.IPersistentSeminaryModality;
import net.sourceforge.fenixedu.persistenceTier.Seminaries.IPersistentSeminaryTheme;
import net.sourceforge.fenixedu.persistenceTier.cms.IPersistentCMS;
import net.sourceforge.fenixedu.persistenceTier.cms.IPersistentMailAddressAlias;
import net.sourceforge.fenixedu.persistenceTier.cms.IPersistentMailingList;
import net.sourceforge.fenixedu.persistenceTier.credits.IPersistentManagementPositionCreditLine;
import net.sourceforge.fenixedu.persistenceTier.credits.IPersistentOtherTypeCreditLine;
import net.sourceforge.fenixedu.persistenceTier.degree.finalProject.IPersistentTeacherDegreeFinalProjectStudent;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantContract;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantContractMovement;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantContractRegime;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantCostCenter;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantInsurance;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantOrientationTeacher;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantOwner;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantPart;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantPaymentEntity;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantSubsidy;
import net.sourceforge.fenixedu.persistenceTier.grant.IPersistentGrantType;
import net.sourceforge.fenixedu.persistenceTier.gratuity.masterDegree.IPersistentSibsPaymentFile;
import net.sourceforge.fenixedu.persistenceTier.gratuity.masterDegree.IPersistentSibsPaymentFileEntry;
import net.sourceforge.fenixedu.persistenceTier.guide.IPersistentReimbursementGuide;
import net.sourceforge.fenixedu.persistenceTier.guide.IPersistentReimbursementGuideEntry;
import net.sourceforge.fenixedu.persistenceTier.inquiries.IPersistentInquiriesCourse;
import net.sourceforge.fenixedu.persistenceTier.inquiries.IPersistentInquiriesRegistry;
import net.sourceforge.fenixedu.persistenceTier.inquiries.IPersistentInquiriesRoom;
import net.sourceforge.fenixedu.persistenceTier.inquiries.IPersistentInquiriesTeacher;
import net.sourceforge.fenixedu.persistenceTier.inquiries.IPersistentOldInquiriesCoursesRes;
import net.sourceforge.fenixedu.persistenceTier.inquiries.IPersistentOldInquiriesSummary;
import net.sourceforge.fenixedu.persistenceTier.inquiries.IPersistentOldInquiriesTeachersRes;
import net.sourceforge.fenixedu.persistenceTier.managementAssiduousness.IPersistentCostCenter;
import net.sourceforge.fenixedu.persistenceTier.managementAssiduousness.IPersistentExtraWorkCompensation;
import net.sourceforge.fenixedu.persistenceTier.managementAssiduousness.IPersistentExtraWorkHistoric;
import net.sourceforge.fenixedu.persistenceTier.managementAssiduousness.IPersistentExtraWorkRequests;
import net.sourceforge.fenixedu.persistenceTier.managementAssiduousness.IPersistentMoneyCostCenter;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentDistributedTest;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentDistributedTestAdvisory;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentMetadata;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentOnlineTest;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentQuestion;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentStudentTestLog;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentStudentTestQuestion;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentTest;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentTestQuestion;
import net.sourceforge.fenixedu.persistenceTier.onlineTests.IPersistentTestScope;
import net.sourceforge.fenixedu.persistenceTier.projectsManagement.IPersistentProjectAccess;
import net.sourceforge.fenixedu.persistenceTier.publication.IPersistentAuthorship;
import net.sourceforge.fenixedu.persistenceTier.publication.IPersistentPublication;
import net.sourceforge.fenixedu.persistenceTier.publication.IPersistentPublicationAttribute;
import net.sourceforge.fenixedu.persistenceTier.publication.IPersistentPublicationFormat;
import net.sourceforge.fenixedu.persistenceTier.publication.IPersistentPublicationTeacher;
import net.sourceforge.fenixedu.persistenceTier.publication.IPersistentPublicationType;
import net.sourceforge.fenixedu.persistenceTier.sms.IPersistentSentSms;
import net.sourceforge.fenixedu.persistenceTier.student.IPersistentDelegate;
import net.sourceforge.fenixedu.persistenceTier.teacher.IPersistentExternalActivity;
import net.sourceforge.fenixedu.persistenceTier.teacher.IPersistentOldPublication;
import net.sourceforge.fenixedu.persistenceTier.teacher.IPersistentOrientation;
import net.sourceforge.fenixedu.persistenceTier.teacher.IPersistentPublicationsNumber;
import net.sourceforge.fenixedu.persistenceTier.teacher.IPersistentServiceProviderRegime;
import net.sourceforge.fenixedu.persistenceTier.teacher.IPersistentTeacherPersonalExpectation;
import net.sourceforge.fenixedu.persistenceTier.teacher.IPersistentWeeklyOcupation;
import net.sourceforge.fenixedu.persistenceTier.teacher.professorship.IPersistentNonAffiliatedTeacher;
import net.sourceforge.fenixedu.persistenceTier.teacher.professorship.IPersistentSupportLesson;
import net.sourceforge.fenixedu.persistenceTier.teacher.service.IPersistentDegreeTeachingService;
import net.sourceforge.fenixedu.persistenceTier.teacher.service.IPersistentInstitutionWorkTime;
import net.sourceforge.fenixedu.persistenceTier.teacher.service.IPersistentOtherService;
import net.sourceforge.fenixedu.persistenceTier.teacher.service.IPersistentTeacherMasterDegreeService;
import net.sourceforge.fenixedu.persistenceTier.teacher.service.IPersistentTeacherPastService;
import net.sourceforge.fenixedu.persistenceTier.teacher.workingTime.IPersistentTeacherInstitutionWorkingTime;
import net.sourceforge.fenixedu.persistenceTier.transactions.IPersistentGratuityTransaction;
import net.sourceforge.fenixedu.persistenceTier.transactions.IPersistentInsuranceTransaction;
import net.sourceforge.fenixedu.persistenceTier.transactions.IPersistentPaymentTransaction;
import net.sourceforge.fenixedu.persistenceTier.transactions.IPersistentReimbursementTransaction;
import net.sourceforge.fenixedu.persistenceTier.transactions.IPersistentSmsTransaction;

/**
 * @author ars
 */
public interface ISuportePersistente
{
	public void iniciarTransaccao() throws ExcepcaoPersistencia;

	public void confirmarTransaccao() throws ExcepcaoPersistencia;

	public void cancelarTransaccao() throws ExcepcaoPersistencia;

	public void clearCache();

	public Integer getNumberCachedItems();

	public IFrequentaPersistente getIFrequentaPersistente();

	public IPersistentCurricularCourse getIPersistentCurricularCourse();

	public IPersistentExecutionCourse getIPersistentExecutionCourse();

	public IPessoaPersistente getIPessoaPersistente();

	public IPersistentExecutionDegree getIPersistentExecutionDegree();

	public IPersistentStudent getIPersistentStudent();

	public IPersistentStudentCurricularPlan getIStudentCurricularPlanPersistente();

	public IPersistentMasterDegreeCandidate getIPersistentMasterDegreeCandidate();

	public IPersistentCandidateSituation getIPersistentCandidateSituation();

	public IPersistentExecutionPeriod getIPersistentExecutionPeriod();

	public IPersistentExecutionYear getIPersistentExecutionYear();

	public IPersistentCurriculum getIPersistentCurriculum();

	public IPersistentExam getIPersistentExam();

	public IPersistentPrice getIPersistentPrice();

	public IPersistentGuideEntry getIPersistentGuideEntry();

	public IPersistentGuide getIPersistentGuide();

	public IPersistentCurricularCourseScope getIPersistentCurricularCourseScope();

	public IPersistentRestriction getIPersistentRestriction();

	public IPersistentEnrolmentPeriod getIPersistentEnrolmentPeriod();

	public IPersistentShiftProfessorship getIPersistentTeacherShiftPercentage();

	public IPersistentMark getIPersistentMark();

	public IPersistentSummary getIPersistentSummary();

	public IPersistentSeminaryModality getIPersistentSeminaryModality();

	public IPersistentSeminaryTheme getIPersistentSeminaryTheme();

	public IPersistentSeminary getIPersistentSeminary();

	public IPersistentSeminaryCaseStudy getIPersistentSeminaryCaseStudy();

	public IPersistentSeminaryCandidacy getIPersistentSeminaryCandidacy();

	public IPersistentSeminaryCaseStudyChoice getIPersistentSeminaryCaseStudyChoice();

	public IPersistentSeminaryCurricularCourseEquivalency getIPersistentSeminaryCurricularCourseEquivalency();

	public IPersistentMetadata getIPersistentMetadata();

	public IPersistentQuestion getIPersistentQuestion();

	public IPersistentTest getIPersistentTest();

	public IPersistentTestQuestion getIPersistentTestQuestion();

	public IPersistentDistributedTest getIPersistentDistributedTest();

	public IPersistentStudentTestQuestion getIPersistentStudentTestQuestion();

	public IPersistentStudentTestLog getIPersistentStudentTestLog();

	public IPersistentOnlineTest getIPersistentOnlineTest();

	public IPersistentTestScope getIPersistentTestScope();

	public IPersistentDistributedTestAdvisory getIPersistentDistributedTestAdvisory();

	// by Barbosa (October 28th, 2003)
	public IPersistentGrantOwner getIPersistentGrantOwner();

	// by Barbosa (November 18th, 2003)
	public IPersistentGrantContract getIPersistentGrantContract();

	// by Barbosa (November 19th, 2003)
	public IPersistentGrantType getIPersistentGrantType();

	// by Barbosa (November 20th, 2003)
	public IPersistentGrantOrientationTeacher getIPersistentGrantOrientationTeacher();

	public IPersistentGrantCostCenter getIPersistentGrantCostCenter();

	public IPersistentGrantPart getIPersistentGrantPart();

	public IPersistentGrantPaymentEntity getIPersistentGrantPaymentEntity();

	public IPersistentGrantSubsidy getIPersistentGrantSubsidy();

	public IPersistentGrantContractRegime getIPersistentGrantContractRegime();

	public IPersistentGrantInsurance getIPersistentGrantInsurance();

	public IPersistentGrantContractMovement getIPersistentGrantContractMovement();

	public IPersistentWebSiteSection getIPersistentWebSiteSection();

	public IPersistentWebSiteItem getIPersistentWebSiteItem();

	public IPersistentMasterDegreeThesisDataVersion getIPersistentMasterDegreeThesisDataVersion();

	public IPersistentMasterDegreeProofVersion getIPersistentMasterDegreeProofVersion();

	public IPersistentExternalPerson getIPersistentExternalPerson();

	public IPersistentCoordinator getIPersistentCoordinator();

	public IPersistentWeeklyOcupation getIPersistentWeeklyOcupation();

	public IPersistentExternalActivity getIPersistentExternalActivity();

	public IPersistentServiceProviderRegime getIPersistentServiceProviderRegime();

	public IPersistentShiftProfessorship getIPersistentShiftProfessorship();

	public IPersistentReimbursementGuide getIPersistentReimbursementGuide();

	public IPersistentReimbursementGuideEntry getIPersistentReimbursementGuideEntry();

	public IPersistentOrientation getIPersistentOrientation();

	public IPersistentPublicationsNumber getIPersistentPublicationsNumber();

	public IPersistentOldPublication getIPersistentOldPublication();

	public IPersistentGaugingTestResult getIPersistentGaugingTestResult();

	public IPersistentSupportLesson getIPersistentSupportLesson();

	public IPersistentTeacherDegreeFinalProjectStudent getIPersistentTeacherDegreeFinalProjectStudent();

	public IPersistentTeacherInstitutionWorkingTime getIPersistentTeacherInstitutionWorkingTime();

	public IPersistentCurricularCourseGroup getIPersistentCurricularCourseGroup();

	public IPersistentGratuitySituation getIPersistentGratuitySituation();

	public IPersistentTutor getIPersistentTutor();

	public IPersistentDelegate getIPersistentDelegate();

	public IPersistentOtherTypeCreditLine getIPersistentOtherTypeCreditLine();

	public IPersistentManagementPositionCreditLine getIPersistentManagementPositionCreditLine();

	public IPersistentFinalDegreeWork getIPersistentFinalDegreeWork();

	public IPersistentSentSms getIPersistentSentSms();

	public IPersistentPeriod getIPersistentPeriod();

	public IPersistentPublication getIPersistentPublication();

	public IPersistentPublicationType getIPersistentPublicationType();

	public IPersistentPublicationAttribute getIPersistentPublicationAttribute();

	public IPersistentPublicationFormat getIPersistentPublicationFormat();

	public IPersistentSibsPaymentFile getIPersistentSibsPaymentFile();

	public IPersistentSibsPaymentFileEntry getIPersistentSibsPaymentFileEntry();

	public IPersistentGratuityTransaction getIPersistentGratuityTransaction();

	public IPersistentObject getIPersistentObject();

	public IPersistentReimbursementTransaction getIPersistentReimbursementTransaction();

	public IPersistentSmsTransaction getIPersistentSmsTransaction();

	public IPersistentInsuranceTransaction getIPersistentInsuranceTransaction();

	public IPersistentPaymentTransaction getIPersistentPaymentTransaction();

	public IPersistentPublicationTeacher getIPersistentPublicationTeacher();

	public IPersistentExportGrouping getIPersistentExportGrouping();

	public IPersistentOldInquiriesSummary getIPersistentOldInquiriesSummary();

	public IPersistentOldInquiriesTeachersRes getIPersistentOldInquiriesTeachersRes();

	public IPersistentInquiriesCourse getIPersistentInquiriesCourse();

	public IPersistentInquiriesRegistry getIPersistentInquiriesRegistry();

	public IPersistentInquiriesRoom getIPersistentInquiriesRoom();

	public IPersistentInquiriesTeacher getIPersistentInquiriesTeacher();

	public IPersistentCostCenter getIPersistentCostCenter();

	public IPersistentMoneyCostCenter getIPersistentMoneyCostCenter();

	public IPersistentExtraWorkRequests getIPersistentExtraWorkRequests();

	public IPersistentExtraWorkCompensation getIPersistentExtraWorkCompensation();

	public IPersistentExtraWorkHistoric getIPersistentExtraWorkHistoric();

	public IPersistentSecretaryEnrolmentStudent getIPersistentSecretaryEnrolmentStudent();

	public IPersistentProjectAccess getIPersistentProjectAccess();

	public IPersistentOldInquiriesCoursesRes getIPersistentOldInquiriesCoursesRes();

	public IPersistentNonAffiliatedTeacher getIPersistentNonAffiliatedTeacher();

	public IPersistentAuthorship getIPersistentAuthorship();

	public IPersistentTeacherPersonalExpectation getIPersistentTeacherPersonalExpectation();

	public IPersistentCMS getIPersistentCms();

	public IPersistentMailAddressAlias getIPersistentMailAdressAlias();

	public IPersistentMailingList getIPersistentMailingList();
            
    public IPersistentTeacherMasterDegreeService getIPersistentTeacherMasterDegreeService();
    
    public IPersistentDegreeTeachingService getIPersistentDegreeTeachingService();
    
    public IPersistentTeacherPastService getIPersistentTeacherPastService();
    
    public IPersistentInstitutionWorkTime getIPersistentInstitutionWorkTime();
    
    public IPersistentOtherService getIPersistentOtherService();
}