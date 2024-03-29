﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="vs_reg_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>User Dashboard</title>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet"/>
       <style>

        body {
  margin: 0;
  height: 100vh;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: 1fr;
}

.background-one {
  background-color: #050030;
}

.background-two {
  background-color:#760048 ;
}

.background-three {
  background-color: #151515;
}

.link-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100%;
  position: relative;
  z-index: 0;
}

a {
 font-family:'Poppins',sans-serif;
  font-size: 2.5em;
}

.link-one {
  color: #53d9d1;
  transition: color 1s cubic-bezier(0.32, 0, 0.67, 0);
  line-height: 1em;
}

.link-one:hover {
  color: #111;
  transition: color 1s cubic-bezier(0.33, 1, 0.68, 1);

  /* Thanks Chris Coyier, you got my back always. https://css-tricks.com/different-transitions-for-hover-on-hover-off/ */
}

.link-one::before {
  content: "";
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  top: 0;
  right: 0;
  background-color: #53d9d1;

  clip-path: circle(0% at 50% calc(50%));
  transition: clip-path 1s cubic-bezier(0.65, 0, 0.35, 1);
}

.link-one:hover::before {
  clip-path: circle(100% at 50% 50%);
}

.link-one::after {
  content: "";
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  top: 0;
  right: 0;
  background-color: #151515;

  clip-path: polygon(
    40% 0%,
    60% 0%,
    60% 0%,
    40% 0%,
    40% 100%,
    60% 100%,
    60% 100%,
    40% 100%
  );

  /*
  Didn't look consistently awesome enough
  across different viewing widths.
  clip-path: polygon(
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%,
    50% 50%
  );
  */
  transition: clip-path 1s cubic-bezier(0.65, 0, 0.35, 1);
}

.link-one:hover::after {
  /*
  clip-path: polygon(
    20% 45%,
    10% 40%,
    30% 30%,
    40% 35%,
    60% 35%,
    70% 30%,
    90% 40%,
    80% 45%,
    60% 35%,
    40% 35%,
    20% 45%,
    20% 55%,
    10% 60%,
    30% 70%,
    40% 65%,
    60% 65%,
    70% 70%,
    90% 60%,
    80% 55%,
    60% 65%,
    40% 65%,
    20% 55%
  );
  */
  clip-path: polygon(
    40% 10%,
    60% 10%,
    60% 35%,
    40% 35%,
    40% 90%,
    60% 90%,
    60% 65%,
    40% 65%
  );
}

.link-two {
  color: #f27b9b;
  transition: color 1s cubic-bezier(0.32, 0, 0.67, 0);
}

.link-two:hover {
  color: #111;
  transition: color 1s cubic-bezier(0.33, 1, 0.68, 1);
}

.link-two::before {
  content: "";
  position: absolute;
  z-index: -2;
  width: 100%;
  height: 100%;
  top: 0;
  right: 0;
  clip-path: polygon(
    0% -20%,
    100% -30%,
    100% -10%,
    0% 0%,
    0% 130%,
    100% 120%,
    100% 100%,
    0% 110%
  );
  background-color: #f27b9b;

  transition: clip-path 1s cubic-bezier(0.25, 1, 0.5, 1);
}

.link-two:hover::before {
  clip-path: polygon(
    0% 10%,
    100% 0%,
    100% 20%,
    0% 30%,
    0% 100%,
    100% 90%,
    100% 70%,
    0% 80%
  );
}

.link-two::after {
  content: "";
  position: absolute;
  z-index: -1;
  width: 5ch;
  height: 5ch;
  top: 50%;
  right: 50%;
  transform: translate(50%, -50%) rotate(0deg) scale(0);
  transition: transform 1s ease;

  background-color: #f27b9b;
}

.link-two:hover::after {
  transform: translate(50%, -50%) rotate(135deg) scale(1);
}

.link-three {
  color: #eb7132;
}

.link-three::after {
  content: "";
  position: absolute;
  z-index: 2;
  width: 50%;
  height: 100%;
  top: 0%;
  left: 0%;
  transform: translate(0, -50%) scaleY(0);
  transition: transform 1s ease;
  mix-blend-mode: difference;

  clip-path: polygon(
    20% 60%,
    100% 60%,
    100% 40%,
    20% 40%,
    20% 0%,
    60% 0%,
    60% 20%,
    20% 20%
  );

  background-color: #eb7132;
}

.link-three:hover::after {
  transform: translate(0, 0%) scaleY(1);
}

.link-three::before {
  content: "";
  position: absolute;
  z-index: 2;
  width: 50%;
  height: 100%;
  bottom: 0%;
  right: 0%;
  transform: translate(0, 50%) scaleY(0);
  transition: transform 1s ease;
  mix-blend-mode: difference;

  clip-path: polygon(
    80% 40%,
    0% 40%,
    0% 60%,
    80% 60%,
    80% 100%,
    40% 100%,
    40% 80%,
    80% 80%
  );

  background-color: #eb7132;
}

.link-three:hover::before {
  transform: translate(0%, 0%) scaleY(1);
}

    </style>
</head>
<body>
    
       


     <div class="background-one">
  <div class="link-container">
    <a class="link-one" href="https://rare-gallery.com/uploads/posts/110338-scalebound-game-fantasy-archer-dragon-green-bow-sword-warrior-xbox-4k-5k-pc.jpg"><strong>HOME</strong></strong></a>
  </div>
</div>
<div class="background-two link-container">
  <a class="link-two" href="https://img.freepik.com/free-vector/night-prairie-game-landscape-unending-game-background-with-rivers-islands-gui-nature-interface-landscape-travel-game-ui-vector-illustration_1284-47782.jpg?w=996&t=st=1676701860~exp=1676702460~hmac=4ee0fc43beeb68b1f87b4fc09200383ded606540124a660221af32413c66aafe"><strong>START GAME</strong></a>
</div>
<div class="background-three link-container">
  <a class="link-three" href="https://img.freepik.com/free-vector/game-boards-with-win-lose-banner-best-players_107791-12598.jpg?w=1380&t=st=1676701755~exp=1676702355~hmac=a362c6ad88cebd4c7192a02d572fa8154e4c980275da4829af9e47a006b04ad2"><strong>PROFILE</strong></a>
</div>


    <form id="form1" runat="server">
         <asp:Label runat="server" ID="txtUserName" />
         </form>

       
   
</body>
</html>