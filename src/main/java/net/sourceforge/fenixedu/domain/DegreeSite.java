package net.sourceforge.fenixedu.domain;

import java.util.List;

import net.sourceforge.fenixedu.domain.accessControl.CoordinatorGroup;
import net.sourceforge.fenixedu.domain.accessControl.RoleGroup;
import net.sourceforge.fenixedu.domain.cms.CmsContent;
import net.sourceforge.fenixedu.domain.organizationalStructure.Unit;
import net.sourceforge.fenixedu.domain.person.RoleType;

import org.fenixedu.bennu.core.groups.Group;

import pt.ist.fenixframework.Atomic;
import pt.utl.ist.fenix.tools.util.i18n.MultiLanguageString;

public class DegreeSite extends DegreeSite_Base {

    public DegreeSite(Degree degree) {
        super();

        setDegree(degree);
    }

    @Override
    public Group getOwner() {
        return CoordinatorGroup.get(getDegree());
    }

    @Override
    public List<Group> getContextualPermissionGroups() {
        List<Group> groups = super.getContextualPermissionGroups();

        groups.add(CoordinatorGroup.get(getDegree()));
        groups.add((Group) RoleGroup.get(RoleType.TEACHER));

        return groups;
    }

    @Override
    public void delete() {
        setDegree(null);
        super.delete();
    }

    @Override
    public MultiLanguageString getName() {
        final Degree degree = getDegree();
        final String name = degree.getSigla();
        return new MultiLanguageString().with(MultiLanguageString.pt, name);
    }

    @Override
    public Unit getUnit() {
        Unit unit = super.getUnit();
        if (unit == null) {
            if (hasDegree()) {
                unit = getDegree().getUnit();
                updateUnit(unit);
            }
        }
        return unit;
    }

    @Atomic
    private void updateUnit(Unit unit) {
        setUnit(unit);
    }

    @Deprecated
    public boolean hasDegree() {
        return getDegree() != null;
    }

    @Override
    public String getReversePath() {
        return super.getReversePath() + "/" + getDegree().getSigla().toLowerCase();
    }

    @Override
    public CmsContent getInitialContent() {
        List<Section> sections = getOrderedSections();
        return sections.isEmpty() ? null : sections.get(0);
    }
}
