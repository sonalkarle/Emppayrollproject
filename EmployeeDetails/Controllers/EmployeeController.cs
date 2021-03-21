using BusinessLayer.Interface;
using CommonLayer.ResponseModel;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeDetails.Controllers
{
    
    
        [Route("api/[controller]")]                                                     
        [ApiController]
        public class EmployeeController : ControllerBase
        {
            IEmployeeBL employeeBL;

            public EmployeeController(IEmployeeBL employeeBL)                           //Constructor n passing an object to controller to access Business layer
            {                                                                           
                this.employeeBL = employeeBL;
            }

            
        [HttpGet]                                                                    //Creating a Get Api
        public IActionResult GetAllEmployeeRecords()                                        //Here return type represents the result of an action method
        {
            try
            {                                                                                           //throw exception
                List<EmployeeDetailModel> result = this.employeeBL.GetAllEmployeeRecords();                    //getting the data from BusinessLayer
                return this.Ok(new { Success = true, Message = "Get Successful", Data = result });      
            }

            catch (Exception e)
            {
                return this.BadRequest(new { Success = false, Message = e.Message });
            }
        }

        [HttpGet("{id}")]                                                                    //Creating a Get Api
        public IActionResult GetEmployee(int id)                                        //Here return type represents the result of an action method
        {
            try
            {                                                                                           //throw exception
                EmployeeDetailModel result = this.employeeBL.GetEmployee(id);                    //getting the data from BusinessLayer
                return this.Ok(new { Success = true, Message = "Get Successful", Data = result });   //(smd format)    //this.Ok returns the data in json format
            }

            catch (Exception e)
            {
                return this.BadRequest(new { Success = false, Message = e.Message });
            }
        }

        [HttpPut("{id}")]                                                                    //Creating a Put Api
        public IActionResult UpdateRecord(EmployeeDetailModel employeeDetailModel)                                        //Here return type represents the result of an action method
        {
            try
            {
                if (ModelState.IsValid)
                {

                    bool result = this.employeeBL.UpdateEmployee(employeeDetailModel);                   //getting the data from BusinessLayer
                    if (result != false)
                    {
                        return this.Ok(new { Success = true, Message = "Update Employee Record Successfully" });   //(smd format)    //this.Ok returns the data in json format
                    }
                    else
                    {
                        return this.BadRequest(new { Success = false, Message = "Update Employee Record Unsuccessfully" });
                    }
                }

                else
                {
                    throw new Exception("Model is not valid");
                }

            }

            catch (Exception e)
            {
                return this.BadRequest(new { Success = false, Message = e.Message });
            }

        }

        [HttpDelete("{id}")]                                                                    //Creating a delete Api
        public IActionResult DeleteRecord(int id)                                        //Here return type represents the result of an action method
        {
            try
            {
                if (ModelState.IsValid)
                {

                    bool result = this.employeeBL.DeleteEmployee(id);                   //getting the data from BusinessLayer
                    if (result != false)
                    {
                        return this.Ok(new { Success = true, Message = "Delete Employee Record Successfully" });   //(smd format)    //this.Ok returns the data in json format
                    }
                    else
                    {
                        return this.BadRequest(new { Success = false, Message = "Delete  Employee Record Unsuccessfully" });
                    }
                }

                else
                {
                    throw new Exception("Model is not valid");
                }

            }

            catch (Exception e)
            {
                return this.BadRequest(new { Success = false, Message = e.Message });
            }

        }


    }
}
