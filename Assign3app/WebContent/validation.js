/**
 * 
 */

function valid() {
    var firstn = document.getElementById("fname");
    var lastn = document.getElementById("lname");
    var datebirth = document.getElementById("dob");
    var em = document.getElementById("email");
    // var gen = document.getElementById("gender");
    var add = document.getElementById("address");
    var ci = document.getElementById("city");
    var pcode = document.getElementById("pincode");
    var c = document.getElementById("country");
    var mno = document.getElementById("mobno");
   
    var hb1 = document.getElementById("1h");
    var hb2 = document.getElementById("2h");
    var hb3 = document.getElementById("3h");
    var hb4 = document.getElementById("4h");
    var hb5 = document.getElementById("5h");

    var b10 = document.getElementById("10b")
    var per10 = document.getElementById("10per")
    var yr10 = document.getElementById("10yr")

    var b12 = document.getElementById("12b")
    var per12 = document.getElementById("12per")
    var yr12 = document.getElementById("12yr")

    var bg = document.getElementById("gb")
    var perg = document.getElementById("gper")
    var yrg = document.getElementById("gyr")

    var male = document.getElementById("m");
    var female = document.getElementById("f");

    var sel = document.getElementById("select");


    var pass = document.getElementById("pass").value;
    var confirmp = document.getElementById("passc").value;


    if (firstn.value.trim() == "") {
        alert("Please enter the firstname");
        return false;
    }
    else if(lastn.value.trim()=="")
    {
        alert("Please enter the lastname");
        return false;
    }
    else if(pass.trim()==="" && confirmpp.trim()==="" || pass!=confirmp)
    {
        alert("Password is blank and does not blank");
        return false;
    }

    else if(datebirth.value.trim()=="")
    {
        alert("Please enter the date of birth");
        return false;
    }
    else if(em.value.trim()=="")
    {
        alert("Please enter the email")
        return false;
    }
    
    else if(!male.checked)
    {
        if(!female.checked)
        {
            alert("choose your gender");
            return false;
        }
        return false;   
    }

    else if(add.value.trim()=="")
    {
        alert("please enter the address");
        return false;
    }
    else if(ci.value.trim()=="")
    {
        alert("please enter the city");
        return false;
    }
    else if(pcode.value.trim()=="")
    {
        alert("please enter the pincode");
        return false;
    }
    else if(c.value.trim()=="")
    {
        alert("please enter the country");
        return false;
    }
    else if(mno.value.trim()=="")
    {
    
        alert("please enter the mobile number");
        return false;
    }

    else if(sel.value=="SELECT YOUR BRANCH OF ENGINEERING")
    {
        alert("please choose your branch of Engineering");
        return false;
    }
    else if(!hb1.checked)
      { 
          if(!hb2.checked)
          {
              if(!hb3.checked)
              {
                if(!hb4.checked)
                {
                    if(!hb5.checked)
                    {
                        alert("please check atleast one hobbie");
                        return false;   
                    }
                } 
              }
          }
          return false;
          
      }
    // if(!this.form.checkbox.checked)
    // {
    //     alert("Check atleast one hobbie");
    //     return false;
    // }
    
    else if(b10.value.trim()=="")
    {
        alert("Please enter the bord of the 10th");
        return false;
    
    }
    else if(per10.value.trim()=="")
    {
        alert("please enter the percentage of the 10th");
        return false;
    }
    else if(yr10.value.trim()=="")
    {
        alert("please enter passing year of 10th");
        return false;
    }


    else if(b12.value.trim()=="")  
    {
        alert("please enter your bord of the 12th");
        return false;
    }
    else if(per12.value.trim()=="")
    {
        alert("please enter the percentage of the 12th");
        return false;
    }
    else if(yr12.value.trim()=="")
    {
        alert("please enter passing year of the 12th");
        return false;
    }
    else if(bg.value.trim()=="")  
    {
        alert("please complite your graduation academic column");
        return false;
    }
    else if(perg.value.trim()=="")
    {
        alert("enter your percentage of the graduation");
        return false;
    }
    else if(yrg.value.trim()=="")
    {
        alert("enter the passing year of graduation");
        return false;
    }
    else {
        true;
    }
}





