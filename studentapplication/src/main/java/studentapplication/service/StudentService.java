package studentapplication.service;

import java.net.UnknownHostException;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;

import studentapplication.dao.DAOService;
import studentapplication.model.Student;

@Path("/student")
public class StudentService {

	@GET
	public void getAllStudents() throws UnknownHostException {
		DAOService.getAllStundentsDAO();

	}

	@Path("/student/{studentNumber}")
	@GET
	public String getStudent(String studentNumber) throws UnknownHostException {
		DAOService.getStundentDAO(studentNumber);
		return null;
	}

	@POST
	public String addStudent(Student student) throws UnknownHostException {
		DAOService.addStundentDAO(student);
		return null;
	}

	@PUT
	public String updateStudent(Student student) throws UnknownHostException {
		DAOService.addStundentDAO(student);
		return null;
	}

	@Path("/student/{studentNumber}")
	@DELETE()
	public String deleteStudent(String studentNumber)
			throws UnknownHostException {
		DAOService.deleteStundentDAO(studentNumber);
		return null;
	}

}
