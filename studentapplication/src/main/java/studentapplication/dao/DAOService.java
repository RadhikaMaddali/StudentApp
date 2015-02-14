package studentapplication.dao;

import java.net.UnknownHostException;

import org.codehaus.jettison.json.JSONObject;




import studentapplication.model.Student;

import com.google.gson.Gson;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.ServerAddress;
import com.mongodb.util.JSON;

public class DAOService {
	public static String getAllStundentsDAO() throws UnknownHostException {
		MongoClient client = new MongoClient(new ServerAddress("localhost",
				27017));
		DB dbObj = client.getDB("testdb");
		DBCollection collection = dbObj.getCollection("Student");
		DBCursor cursor = collection.find();
		JSON jsonObj = new JSON();

		return jsonObj.serialize(cursor);
	}

	public static String getStundentDAO(String studentNumber)
			throws UnknownHostException {
		MongoClient client = new MongoClient(new ServerAddress("localhost",
				27017));
		DB dbObj = client.getDB("testdb");
		DBCollection collection = dbObj.getCollection("Student");
		BasicDBObject whereQuery = new BasicDBObject();
		whereQuery.put("studentNumber", studentNumber);
		DBCursor cursor = collection.find(whereQuery);

		JSON jsonObj = new JSON();

		return jsonObj.serialize(cursor);
	}

	public static void addStundentDAO(Student student)
			throws UnknownHostException {

		MongoClient client = new MongoClient(new ServerAddress("localhost",
				27017));
		Gson gson = new Gson();
		BasicDBObject studObj = (BasicDBObject) JSON
				.parse(gson.toJson(student));
		DB dbObj = client.getDB("testdb");

		DBCollection collection = dbObj.getCollection("Student");
		collection.save(studObj);

	}

	public static void updateStundentDAO(Student student)
			throws UnknownHostException {

		MongoClient client = new MongoClient(new ServerAddress("localhost",
				27017));
		DB dbObj = client.getDB("testdb");
		DBCollection collection = dbObj.getCollection("Student");
		BasicDBObject newDocument = new BasicDBObject();
		newDocument.append(
				"$set",
				new BasicDBObject().append("preferredName",
						student.getPreferredName()));
		BasicDBObject updateQuery = new BasicDBObject().append("studentNumber",
				student.getStudentNumber());
		collection.update(updateQuery, newDocument);

	}

	public static void deleteStundentDAO(String studentNumber)
			throws UnknownHostException {

		MongoClient client = new MongoClient(new ServerAddress("localhost",
				27017));
		DB dbObj = client.getDB("testdb");
		DBCollection collection = dbObj.getCollection("Student");
		BasicDBObject removeStudent = new BasicDBObject().append(
				"studentNumber", studentNumber);
		collection.remove(removeStudent);

	}
}
