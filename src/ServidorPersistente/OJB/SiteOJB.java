/*
 * SitioOJB.java
 *
 * Created on 25 de Agosto de 2002, 1:02
 */

package ServidorPersistente.OJB;

/**
 *
 * @author  ars
 */

//import java.util.ArrayList;
import java.util.List;

import org.odmg.QueryException;

import Dominio.Announcement;
import Dominio.IDisciplinaExecucao;
import Dominio.ISite;
import Dominio.Site;
import ServidorPersistente.ExcepcaoPersistencia;
import ServidorPersistente.IPersistentSite;

public class SiteOJB extends ObjectFenixOJB implements IPersistentSite {
    
    /** Creates a new instance of SitioOJB */
    public SiteOJB() {
    }
    
    public List readAnnouncementsByExecutionCourse(IDisciplinaExecucao executionCourse) throws ExcepcaoPersistencia{
        try {
            String oqlQuery = "select announcement from " + Announcement.class.getName();
			oqlQuery += " where site.executionCourse.nome = $1";
			oqlQuery += " and site.executionCourse.executionPeriod.name = $2";
			oqlQuery += " and site.executionCourse.executionPeriod.executionYear.year = $3";
			
			query.create(oqlQuery);
			query.bind(executionCourse.getNome());
			query.bind(executionCourse.getExecutionPeriod().getName());
			query.bind(executionCourse.getExecutionPeriod().getExecutionYear().getYear());
			
            List result = (List) query.execute();
            lockRead(result);
            
            return result;
        } catch (QueryException ex) {
            throw new ExcepcaoPersistencia(ExcepcaoPersistencia.QUERY, ex);
        }
    }
    
    
//    public ICurriculum readCurriculumByNomeSitio(String Nome) throws ExcepcaoPersistencia{
//        try {
//            ISitio sitio = null;
//            String oqlQuery = "select sitio from " + Sitio.class.getName();
//            oqlQuery += " where NOME = $1 ";
//            query.create(oqlQuery);
//            query.bind(Nome);
//            List result = (List) query.execute();
//            lockRead(result);
//            if (result.size() != 0){
//                sitio = (ISitio) result.get(0);
//                return sitio.getCurriculum();
//            }
//            return null;
//        } catch (QueryException ex) {
//            throw new ExcepcaoPersistencia(ExcepcaoPersistencia.QUERY, ex);
//        }
//    }
//    
//    public ISite readByName(String nome) throws ExcepcaoPersistencia {
//        try {
//            ISitio sitio = null;
//            String oqlQuery = "select sitio from " + Sitio.class.getName();
//            oqlQuery += " where NOME = $1 ";
//            query.create(oqlQuery);
//            query.bind(nome);
//            List result = (List) query.execute();
//            lockRead(result);
//            if (result.size() != 0)
//                sitio = (ISitio) result.get(0);
//            return sitio;
//        } catch (QueryException ex) {
//            throw new ExcepcaoPersistencia(ExcepcaoPersistencia.QUERY, ex);
//        }
//    }

	public ISite readByExecutionCourse(IDisciplinaExecucao executionCourse) throws ExcepcaoPersistencia {
		try {
			ISite site = null;
			
			String oqlQuery = "select site from " + Site.class.getName();
			oqlQuery += " where executionCourse.nome = $1";
			oqlQuery += " and executionCourse.executionPeriod.name = $2";
			oqlQuery += " and executionCourse.executionPeriod.executionYear.year = $3";
			
			query.create(oqlQuery);
			query.bind(executionCourse.getNome());
			query.bind(executionCourse.getExecutionPeriod().getName());
			query.bind(executionCourse.getExecutionPeriod().getExecutionYear().getYear());

			List result = (List) query.execute();
			lockRead(result);
			if (result.size() != 0)
				site = (ISite) result.get(0);
			return site;
		} catch (QueryException ex) {
			throw new ExcepcaoPersistencia(ExcepcaoPersistencia.QUERY, ex);
		}
	}
    
    
//    public List readSiteOwners(String name) throws ExcepcaoPersistencia {
//        try {
//            ISitio site = null;
//            
//            String oqlQuery = "select site from " + Site.class.getName();
//            oqlQuery += " where nome = $1";
//            query.create(oqlQuery);
//            query.bind(name);
//            List result = (List) query.execute();
//            lockRead(result);
//            
//            if (result.size() != 0)
//                site = (ISitio) result.get(0);
//            else
//                return new ArrayList();
//            return site.getDocentesResponsavel();
//        } catch (Exception ex) {
//            throw new ExcepcaoPersistencia(ExcepcaoPersistencia.QUERY, ex);
//        }
//    }
    
//    public List readSiteTeachers(String nome) throws ExcepcaoPersistencia {
//        try {
//            
//            ISitio sitio = null;
//            
//            String oqlQuery = "select sitio from " + Sitio.class.getName();
//            oqlQuery += " where nome = $1";
//            query.create(oqlQuery);
//            query.bind(nome);
//            List result = (List) query.execute();
//            lockRead(result);
//            
//            if (result.size() != 0)
//                sitio = (ISitio) result.get(0);
//            else
//                return new ArrayList();
//            return sitio.getDocentesLecciona();
//        } catch (Exception ex) {
//            throw new ExcepcaoPersistencia(ExcepcaoPersistencia.QUERY, ex);
//        }
//    }
    
    public List readAll() throws ExcepcaoPersistencia {
        try {
            String oqlQuery = "select site from " + Site.class.getName();
            query.create(oqlQuery);
            List result = (List) query.execute();
            lockRead(result);
            return result;
        } catch (QueryException ex) {
            throw new ExcepcaoPersistencia(ExcepcaoPersistencia.QUERY, ex);
        }
    }
    
    public void lockWrite(ISite site) throws ExcepcaoPersistencia {
        super.lockWrite(site);
    }
    
    public void delete(ISite site) throws ExcepcaoPersistencia {
        super.delete(site);
    }
    
    public void deleteAll() throws ExcepcaoPersistencia {
        String oqlQuery = "select all from " + Site.class.getName();
        super.deleteAll(oqlQuery);
    }
    
}
