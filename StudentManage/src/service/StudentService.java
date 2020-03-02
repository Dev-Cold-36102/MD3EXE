package service;

import jdk.internal.org.objectweb.asm.Handle;
import model.Student;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentService implements StudentServiceInterface {
    private static Map<Integer, Student> studentMap;

    static {
        studentMap = new HashMap<>();
        studentMap.put(1, new Student(1,"HV01", "khai", "male", "bac ninh"));
        studentMap.put(2, new Student(2,"HV02", "nhat", "female", "binh dinh"));
        studentMap.put(3, new Student(3,"HV03", "hoang", "male", "hung yen"));
        studentMap.put(4, new Student(4, "HV04","nam", "female", "hanoi"));
        studentMap.put(5, new Student(5, "HV05","tien", "male", "thanh hoa"));
    }


    @Override
    public List<Student> viewAll() {
        return new ArrayList<>(studentMap.values());
    }

    @Override
    public void saveInfor(Student student) {
        studentMap.put(student.getId(), student);
    }

    @Override
    public Student findById(int id) {
        return studentMap.get(id);
    }

    @Override
    public void update(int id, Student student) {
        studentMap.put(id, student);
    }

    @Override
    public void delete(int id) {
        studentMap.remove(id);
    }
}
