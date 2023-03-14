<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="vs_reg_Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>

    <style>
        *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
        html,body{
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
   color: white;
  background: -webkit-linear-gradient( #0b0b0b, #fa4299);
}
        ::selection{
  background: #fa4299;
  color: #fff;
}

        .wrapper{
  overflow: hidden;
  max-width: 390px;
  background-color: #000000;
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
 
}
        .wrapper .form-container{
  width: 100%;
  overflow: hidden;
}
.form-container .form-inner{
  display: flex;
  width: 200%;
}
.form-container .form-inner form{
  width: 50%;
  transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
}
.form-inner form .field{
  height: 50px;
  width: 100%;
  margin-top: 20px;
}
.form-inner form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  padding-left: 15px;
  border-radius: 5px;
  border: 1px solid lightgrey;
  border-bottom-width: 2px;
  font-size: 17px;
  transition: all 0.3s ease;
}
.form-inner form .field input:focus{
  border-color: #fc83bb;
  /* box-shadow: inset 0 0 3px #fb6aae; */
}
.form-inner form .field input::placeholder{
  color: #999;
  transition: all 0.3s ease;


}

.title-login{
    font-size:200%
}
form .field input:focus::placeholder{
  color: #b3b3b3;
}
.form-inner form .pass-link{
  margin-top: 5px;
}
.form-inner form .signup-link{
  text-align: center;
  margin-top: 30px;
}
.form-inner form .pass-link a,
.form-inner form .signup-link a{
  color: #fa4299;
  text-decoration: none;
}

        .form-inner  .pass-link a{
  color: white;
  text-decoration: none;
}
        
.btn{
  height: 50px;
  width: 100%;
  border-radius: 5px;
  position: relative;
  overflow: hidden;
}
.btn .btn-layer{
  height: 100%;
  width: 300%;
  position: absolute;
  left: -100%;
  background: -webkit-linear-gradient(right, #a445b2, #fa4299, #a445b2, #fa4299);
  border-radius: 5px;
  transition: all 0.4s ease;
}
.btn:hover .btn-layer{
  left: 0;
}
.btn input[type="submit"]{
  height: 100%;
  width: 100%;
  z-index: 1;
  position: relative;
  background: none;
  border: none;
  color: #fff;
  padding-left: 0;
  border-radius: 5px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
}
    </style>

</head>
<body>
    <div class="wrapper">
     <div class="form-inner">
       <form id="form2" runat="server" class="login"  name="myform">
    
           
            <div class="title-login">

                <h3>
                    <img src="img2.png" style="width:50px ;height:50px" /> User Login
                </h3>
            </div>

                <br />
            <div class="field" name="uname">
                <asp:TextBox runat="server" ID="txtUserId" placeholder="Enter UserId" CssClass="form-control"/>
                <br />
           </div>
        <div class="field" name="password" >
                <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password"  TextMode="Password" 
                    CssClass="form-control"/>
                <br />
       </div>
        <div class="pass-link">
                     <a href="https://www.website.com/forgot-password/?source=SC&country=IN">Forgot password?</a>
         </div>
           
                     

               <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-info form-control" Text="Login"
                    OnClick="btnLogin_Click"/>
                <br />
               
                <asp:Label runat="server" ID="txtInfo" />
            

        
       </form>
      </div>
    </div>
</body>
</html>
