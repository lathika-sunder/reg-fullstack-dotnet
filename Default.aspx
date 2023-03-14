<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="vs_reg_Default" ValidateRequest="true" %>

<!DOCTYPE html >  

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
       <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet"/>
    <title>Registeration Form with Validation</title>
    <style type="text/css">

        *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
}

.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
    z-index:1;
}

.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: 0px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -180px;
    bottom: -510px;
}

.formbox1{
    height: 600px;
    width: 500px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
   z-index:100;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 10 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
  
}

.formbox1 *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

.label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
.input{
    display: block;
    height: 50px;
    width: 100%;
   color:black;
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    

}

.button{
  
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}

    
       .glow-on-hover {
    width: 220px;
    height: 50px;
    border: none;
    outline: none;
    color: #fff;
    background: #111;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
}

.glow-on-hover:before {
    content: '';
    background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
    position: absolute;
    top: -2px;
    left:-2px;
    background-size: 400%;
    z-index: -1;
    filter: blur(5px);
    width: calc(100% + 4px);
    height: calc(100% + 4px);
    animation: glowing 20s linear infinite;
    opacity: 0;
    transition: opacity .3s ease-in-out;
    border-radius: 10px;
}

.glow-on-hover:active {
    color: #000
}

.glow-on-hover:active:after {
    background: transparent;
}

.glow-on-hover:hover:before {
    opacity: 1;
}

.glow-on-hover:after {
    z-index: -1;
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: #111;
    left: 0;
    top: 0;
    border-radius: 10px;
}
        </style>
</head>
<body>
    <header>
      
        <p> By Lathika Sunder</p><br/>
        
    </header>
    
    <div class="background">
        <div class="shape"></div>
        
   
 <form runat="server" id="form1" class="formbox" >
    
       <asp:ScriptManager ID="ScriptManager1" runat="server" />

   
<table align="center" class="formbox1">
     <p> REGISTERATION FORM</p>
<tr>
<td class="label" ><strong>F U L L  N A M E</strong></td>
<td  class="input">
<asp:TextBox ID="txtName" runat="server" ForeColor="black" placeholder="enter your full name" Height="50px"  Width="380px"  ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" style="font-size:10px" ErrorMessage="Please Enter your Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
    
</td>

</tr>
<tr>
<td  class="label"><strong>A D D R E S S </strong></td>
<td class="input">
<asp:TextBox ID="txtAdd" runat="server" ForeColor="black" placeholder="enter your address" Height="50px"  Width="380px" ></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdd" ErrorMessage="Please Enter your Address" style="font-size:10px"  ForeColor="#CC0000"></asp:RequiredFieldValidator>  
</td>
</tr>

<tr>
<td class="label"><strong >P H O N E</strong></td>
    
 <td class="input">  
<asp:TextBox ID="txtPhone" runat="server" ForeColor="black" placeholder="927654678" Height="50px"  Width="380px" TextMode="Phone" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter your Phone No" style="font-size:10px" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
<asp:RegularExpressionValidator ID="rev" runat="server" ErrorMessage="The PhoneNumber field is not a valid phone number." style="font-size:10px" ControlToValidate="txtPhone" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$" ></asp:RegularExpressionValidator>
</td>  
 </tr>  
      
<tr>
    
<td class="label"><strong>E M A I L</strong></td>
<td class="input">
<asp:TextBox ID="txtEmail" runat="server" ForeColor="black" placeholder="example@example.com" TextMode="Email" Height="50px"  Width="380px" ></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" style="font-size:10px" ErrorMessage="Please Enter your Mail Id" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
</td>
</tr>

<tr>
<td class="label" ><strong>U S E R N A M E</strong></td>
<td class="input">
<asp:TextBox ID="txtUser" runat="server" ForeColor="black" placeholder="enter username" Height="50px"  Width="380px"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUser" style="font-size:10px" ErrorMessage="Please Enter a Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
    
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"    
ErrorMessage="Username length must be between 7 to 10 characters"
ControlToValidate="txtUser"   
        style="font-size:10px"
ValidationExpression="^[a-zA-Z0-9\s]{7,10}$" /></td>
</tr>

<tr>
<td text-align="top" class="label" ><strong>P A S S W O R D</strong></td>
<td class="input"">
<asp:TextBox ID="txtPass" runat="server" placeholder="*****" ForeColor="black" TextMode="Password" Height="50px"  Width="380px" ></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" style="font-size:10px" ErrorMessage="Please Enter a Password" ForeColor="red"></asp:RequiredFieldValidator>  
    <asp:RegularExpressionValidator ID="RegExp1" runat="server"    
ErrorMessage="Password length must be between 7 to 10 characters"
ControlToValidate="txtPass"    
        style="font-size:10px"
ValidationExpression="^[a-zA-Z0-9\s]{7,10}$" />
</td>

</tr>

<tr>

<td align="center" >
    <div style="align-items:center; padding-top:30px;padding-bottom:30px">
       
<asp:Button ID="btnReg" runat="server" Cssclass="glow-on-hover"  Text="Register" OnClick="btnReg_Click" />
        </div>

</td>
</tr>

</table>
 
   
</form>
	 
  <div class="shape"></div>       
</div>
</body>
</html>
