<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resim.aspx.cs" Inherits="Tasarım.Resim" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>Resim Yükle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: url('https://images.unsplash.com/photo-1518770660439-4636190af475') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
        }

        /* AnaSayfa menüsüyle aynı navbar */
        .navbar-custom {
            background-color: #343a40;
        }

        .form-box {
            width: 90%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.95);
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3);
            margin-top: 50px;
            margin-bottom: 40px;
        }

        .form-box h3 {
            color: #333;
            margin-bottom: 30px;
        }

        .form-label {
            font-weight: bold;
            color: #444;
        }

        .btn-success {
            padding: 12px;
            font-size: 16px;
        }

        .text-danger {
            font-size: 14px;
        }

        footer {
            background-color: #212529;
            color: #fff;
            padding: 15px 0;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- 🔹 Navbar (AnaSayfa ile aynı tasarım) -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container">
            <a class="navbar-brand" href="../Anasayfa.aspx">AnaSayfa</a>
            <a class="navbar-brand" href="../duyuru.aspx">Duyuru</a>
            <a class="navbar-brand" href="Resim.aspx">Resim</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
        <!-- 🔹 Navbar Sonu -->

        <!-- 🔹 Form Kutusu -->
        <div class="d-flex flex-column align-items-center">
            <div class="form-box">
                <h3 class="text-center">Resim Ekleme</h3>

                <div class="mb-3">
                    <label for="txtresimadi" class="form-label">Resim Adı</label>
                    <asp:TextBox ID="txtresimadi" runat="server" CssClass="form-control" placeholder="Örn: kitap"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="furesim" class="form-label">Resim Dosyası</label>
                    <asp:FileUpload ID="furesim" runat="server" CssClass="form-control" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" CssClass="text-danger fw-bold"></asp:Label>
                </div>

                <div class="d-grid mb-3">
                    <asp:Button ID="btnekle" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="btnekle_Click" />
                </div>

                <div class="text-center">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm2.aspx" CssClass="btn btn-link">Arama Sayfası</asp:LinkButton>
                </div>
            </div>

            <!-- 🔹 Resim Listesi -->
            <div class="container mt-4">
                <asp:DataList ID="dlResimler" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="table">
                    <ItemTemplate>
                        <div class="card m-2" style="width: 300px; height:300px;">
                            <img src='<%# ResolveUrl("~/resimler/" + Eval("UrunResmi")) %>' class="card-img-top" style="height:180px; object-fit:cover;" alt='<%# Eval("urunAdi") %>' />
                            <div class="card-body p-2">
                                <h6 class="card-title text-center"><%# Eval("urunAdi") %></h6>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
</form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
