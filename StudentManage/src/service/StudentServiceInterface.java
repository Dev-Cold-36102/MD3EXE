package service;

import model.Student;

import java.util.List;

public interface StudentServiceInterface {
    List<Student> viewAll();
    void saveInfor( Student student);
    Student findById(int id);
    void update(int id, Student student);
    void delete(int id);
}
