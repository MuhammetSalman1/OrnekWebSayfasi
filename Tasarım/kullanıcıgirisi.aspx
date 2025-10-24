<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kullanıcı_girişi.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Kullanıcı Girişi</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: url('https://images.unsplash.com/photo-1557682224-5b8590cd9ec5') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .loginWindow {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            max-width: 400px;
            width: 100%;
        }

        .loginWindow h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .inputStyle {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .loginButton {
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
        }

        .loginButton:hover {
            background-color: #218838;
        }

        .btn-kapat {
            margin-top: 15px;
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 6px;
            width: 100%;
        }

        .btn-kapat:hover {
            background-color: #c82333;
        }

        .text-danger {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlay">
            <div class="loginWindow">
                <h1>KULLANICI GİRİŞİ</h1>

                <label><strong>Kullanıcı Adı</strong></label>
                <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="inputStyle" Placeholder="Kullanıcı adınızı giriniz."></asp:TextBox>

                <label><strong>Parolanız</strong></label>
                <asp:TextBox ID="txtParola" runat="server" CssClass="inputStyle" TextMode="Password" Placeholder="Parolanızı giriniz."></asp:TextBox>

                <asp:Button ID="btnGİRİS" runat="server" Text="GİRİŞ" CssClass="loginButton" OnClick="btnGiris_Click" />

                <asp:Label ID="lblSonuc" runat="server" ForeColor="Red" CssClass="text-danger mt-3 d-block"></asp:Label>

                <asp:Button ID="Button2" runat="server" Text="Kapat" CssClass="btn-kapat" OnClientClick="closeWindow(); return false;" />
            </div>
        </div>

        <script type="text/javascript">
            function closeWindow() {
                window.open('', '_self', '');
                window.close();
            }
        </script>
    </form>
</body>
</html>
