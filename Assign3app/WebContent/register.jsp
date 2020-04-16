<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Student registration form</title>
    <link rel="stylesheet" href="register.css">
    

</head>

<body>
    <h1>STUDENT REGISTRATION FORM</h1>
    <div class="all">
        <form name="stdreg" action="/register" onsubmit="return valid()" method="post">
            
            <table class="selected">
                <tr>
                    <div class="row">

                        <td>
                            <div class="for30"><label><strong>FIRST NAME</strong></label></div>
                        </td>
                        <td>
                            <div class="for70" ><input type="text" id="fname" name="FIRST NAME" value=""></div>
                                <!-- <label id="vali" style="color: red; visibility: hidden;">Invalid</label></div> -->
                        </td>
                    </div>
                </tr>

                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>LAST NAME </strong></label></div>
                        </td>
                        <td>
                            <div class="for70" ><input type="text" id="lname" name="LAST NAME" value=""></div>
                            <!-- <label ="vali" style="color: red; visibility: hidden;">Invalid</label></div> -->
                        </td>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>EMAIL ID</strong></label></div>
                        </td>
                        <td>
                            <div class="for70" ><input type="email" id="email" name="EMAIL" value=""></div>
                        </td>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>PASSWORD </strong></label></div>
                        </td>
                        <td>
                            <div class="for70" ><input type="password" id="pass" name="PASSWORD" value=""></div>
                            <!-- <label ="vali" style="color: red; visibility: hidden;">Invalid</label></div> -->
                        </td>
                    </div>
                </tr>
                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>CONFIRM PASSWORD </strong></label></div>
                        </td>
                        <td>
                            <div class="for70" ><input type="password" id="passc" name="CONFIRMPASSWORD" value=""></div>
                            <!-- <label ="vali" style="color: red; visibility: hidden;">Invalid</label></div> -->
                        </td>
                    </div>
                </tr>



                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>DATE OF BIRTH</strong></label></div>
                        </td>
                        <td>
                            <div class="for70" ><input type="date" id="dob" name="BOD" value="">
                        </td>
                    </div>
                </tr>

                

                <tr>
                    <div class="row" id="gender">
                        <td><label><strong>GENDER</strong></label></td>
                        <td><input type="radio" id="m" name="GENDER" value="male">MALE
                            <input type="radio" id="f" name="GENDER" value="female">FEMALE<br></td>
                    </div>
                </tr>

                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>ADDRESS</strong></label></div>
                        </td>
                        <td>
                            <div class="for70" ><input type="text" id="address" name="ADDRESS" value=""></div>
                        </td>
                    </div>
                </tr>

                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>CITY</strong></label></div>
                        </td>
                        <td>
                            <div class="for70"><input type="text" id="city" name="CITY" value=""></div>
                        </td>
                    </div>
                </tr>

                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>PINCODE</strong></label></div>
                        </td>
                        <td>
                            <div class="for70"><input type="number" id="pincode" name="PINCODE" value=""></div>
                        </td>
                    </div>
                </tr>


                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>COUNTRY</strong></label></div>
                        </td>
                        <td>
                            <div class="for70"><input type="text" id="country" name="COUNTRY" value=""></div>
                        </td>
                    </div>
                </tr>

                <tr>
                    <div class="row">
                        <td>
                            <div class="for30"><label><strong>MOBILE NUMBER</strong></label></div>
                        </td>
                        <td>
                            <div class="for70"><input type="number" id="mobno" name="MOBILE NO." value=""></div>
                        </td>
                    </div>
                </tr>



                <tr>
                    <td><label><strong>BRANCH OF ENGINEERING</strong></label></td><br><br>
                    <td><select id = "select">
                            <option>SELECT YOUR BRANCH OF ENGINEERING</option>
                            <option>COMPUTER ENGINEERING</option>
                            <option>CIVIL ENGINEERING</option>
                            <option>MECHANICAL ENGINEERING</option>
                            <option>E & TC ENGINEERING</option>
                            <option>ELECTRICAL ENGINEERING</option>
                        </select></td>
                </tr>

                <tr>
                    <div class="hobbies">
                        <td><label><strong>HOBBIES</strong></label><br></td>
                        <td><input type="checkbox" id="1h" name="checkbox" value="">DRAWING <br>
                            <input type="checkbox" id="2h" name="checkbox" value="">SINGING <br>
                            <input type="checkbox" id="3h" name="checkbox" value="">TRAVELLING <br>
                            <input type="checkbox" id="4h" name="checkbox" value="">READING <br>
                            <input type="checkbox" id="5h" name="checkbox" value="">OTHER <input type="text" name="" value="">
                        </td> 
                    </div>
                </tr>
            </table>
            <br> <label><strong>QUALIFICATION</strong></label>
            <table class="tablecolor">
                <thead>
                    <tr>
                        <th>EXAMINATION</th>
                        <th>BORD</th>
                        <th>PERCENTAGE</th>
                        <th>YEAR OF PASSING</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>CLASS 10 TH</td>
                        <td><input type="text"  id="10b" name="10 TH" value=""></td>
                        <td><input type="number" id="10per" name="" value=""></td>
                        <td><input type="text" id="10yr" name="" value=""></td>
                    </tr>
                    <tr>
                        <td>CLASS 12 TH</td>
                        <td><input type="text" id="12b" name="12 TH" value=""></td>
                        <td><input type="number" name="12per" value=""></td>
                        <td><input type="text" name="12yr" value=""></td>
                    </tr>
                    <tr>
                        <td>GRADUATION</td>
                        <td><input type="text" id="gb" name="GRADUATION" value=""></td>
                        <td><input type="number" name="gper" value=""></td>
                        <td><input type="text" name="gyr" value=""></td>
                    </tr>
                </tbody>

            </table>

            <div class="button"><input type="submit"  value="SUBMIT" id="name1"></div>
            <input type="reset" value="RESET" id="name1">
            <hr>
           <a href="login.jsp">
                <h2>Already have account? then<input type="button"  class="btnpo" id="name" value="Login"> </h2>
            </a>
            <!-- <input type="button" class="btnpo" id="name" value="Login"> -->

        </form>
    </div>
</body>
<script src="validate.js"></script>

</html>