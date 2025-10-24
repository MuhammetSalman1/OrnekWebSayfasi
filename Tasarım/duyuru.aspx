<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="duyuru.aspx.cs" Inherits="Tasarım.duyuru" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Duyuru Sayfası</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <!-- Font ve Tema Uyumu -->
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Segoe UI', sans-serif;
        }

        /* Navbar */
        .navbar-custom {
            background-color: #343a40;
        }

        /* Form Kutusu (AnaSayfa’daki kutu efektiyle aynı) */
        .animated-box {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            padding: 30px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .animated-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }

        /* Form Elemanları */
        h2 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        .btn-submit {
            background-color: #28a745;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #218838;
        }

        footer {
            background-color: #212529;
            color: #fff;
            padding: 15px 0;
            margin-top: 50px;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container">
            <a class="navbar-brand" href="AnaSayfa.aspx">AnaSayfa</a>
            <a class="navbar-brand" href="duyuru.aspx">Duyuru</a>
            <a class="navbar-brand" href="Admin/Resim.aspx">Resim</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <!-- Duyuru Formu -->
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="animated-box">
                <h2>Metin Ekleme</h2>

                <div class="form-group mb-3">
                    <asp:Label ID="Label1" runat="server" Text="Lütfen bir metin giriniz!"></asp:Label>

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                </div>



                <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn-submit" OnClick="Button1_Click" />
            </div>
        </div>
    </form>

   

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
