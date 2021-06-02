package com.internproject.springpr.service;
import com.internproject.springpr.domain.Faculty;
import com.internproject.springpr.repository.FacultyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FacultyService {
    @Autowired
    private FacultyRepository frepo;
    public Faculty flogin(String facEmail,String facPass) {
        Faculty faculty = frepo.findByFacEmailAndFacPass(facEmail, facPass);
        return faculty;
    }
}