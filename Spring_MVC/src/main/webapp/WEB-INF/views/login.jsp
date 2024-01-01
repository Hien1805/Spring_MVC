<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
    <style>
  @import url('https://fonts.googleapis.com/css?family=Roboto:300');

  body {
    background: #f2f2f2;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family: 'Roboto Slab', serif; /* Áp dụng phông chữ Roboto Slab */
  font-style: normal; /* Kiểu bình thường */
  font-weight: 400; 
  }

  .login-page {
    width: 360px;
  }

  .form {
    background: #FFFFFF;
    padding: 40px;
    text-align: center;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    border-radius: 4px;
  }

  .form h3 {
    font-size: 24px;
    margin-bottom: 20px;
  }

  .form input {
    font-family: "Roboto", sans-serif;
    outline: 0;
    background: #f9f9f9;
    width: 100%;
    border: 0;
    margin-bottom: 15px;
    padding: 15px;
    box-sizing: border-box;
    font-size: 14px;
    border-radius: 4px;
  }

  .form input[type="submit"] {
    background: red;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .form input[type="submit"]:hover {
    background: #43A047;
  }

  .error-message {
    color: red;
    margin-top: 10px;
  }
</style>
</head>
<body>
   <div class="login-page">
      <div class="form">
         <h3>PLEASE LOGIN</h3>
         <br/>
         <form name="submitForm" method="POST">
            <table>
               <tr>
                  <td>User Name</td>
                  <td><input type="text" name="userName" placeholder="username" /></td>
               </tr>
               <tr>
                  <td>Password</td>
                  <td><input type="password" name="password" placeholder="password"/></td>
               </tr>
               <tr>
                  <td></td>
                  <td><input type="submit" value="Submit" /></td>
               </tr>
            </table>
         </form>
         <div class="error-message">${error}</div>
      </div>
   </div>
</body>
</html>