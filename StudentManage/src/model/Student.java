package model;

public class Student {
    private int id;
    private String code;
    private String name;
    private String gender;
    private String address;

    public Student(int id,String code, String name, String gender, String address) {
        this.id = id;
        this.code=code;
        this.name = name;
        this.gender = gender;
        this.address = address;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

