package com.recruiting.service.employee;

import com.recruiting.domain.Employee;
import com.recruiting.domain.IndividualTimeOff;
import com.recruiting.model.modelUtils.PageWrapper;
import com.recruiting.service.employee.dto.model.EmployeeDetailsModel;
import com.recruiting.service.employee.dto.model.EmployeeFullDetailsModel;
import com.recruiting.service.employee.dto.model.EmployeeModel;
import com.recruiting.service.employee.dto.model.TimeOffSummaryModel;
import org.springframework.data.domain.Pageable;

import java.util.Map;

/**
 * @author Marta Ginosyan
 */

public interface EmployeeDetailService {

    EmployeeModel getEmployeeModel(Long employeeId);

    EmployeeDetailsModel getEmployeeDetailsModel(Long employeeId);

    Map<String, TimeOffSummaryModel> getTimeOffSummaryForEmployee(Employee employee);

    Map<String, TimeOffSummaryModel> getTimeOffSummaryForEmployee(Long id);

    EmployeeFullDetailsModel getEmployeeFullDetailsModel(Long employeeId);

    PageWrapper<IndividualTimeOff> getTimeOffsByEmployee(Long id, Pageable pageable);

    PageWrapper<TimeOffSummaryModel> getTimeOffSummaryForEmployee(Long id, Pageable pageable);

    Map<String, Long> getTimeOffSummaryMapForEmployee(Employee employee);

}
