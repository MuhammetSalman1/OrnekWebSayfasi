<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SliderResimEkle.aspx.cs" Inherits="Tasarım.SliderResimEkle" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slider Resim Ekle</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Segoe UI', sans-serif;
        }

        .navbar-custom {
            background-color: #343a40;
        }

        .animated-box {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .animated-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
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
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container">
            <a class="navbar-brand" href="Anasayfa.aspx">AnaSayfa</a>
            <a class="navbar-brand" href="duyuru.aspx">Duyuru</a>
            <a class="navbar-brand" href="Admin/Resim.aspx">Resim</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <!-- Slider Resim Ekleme Formu -->
    <div class="container mt-5">
        <div class="row justify-content-center" data-aos="fade-up">
            <div class="col-md-6">
                <div class="card shadow animated-box">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">Slider Resmi Ekle</h5>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="fuResim" class="form-label">Resim Seç</label>
                            <asp:FileUpload ID="fuResim" runat="server" CssClass="form-control" />
                        </div>
                        <div class="mb-3">
                            <label for="txtAciklama" class="form-label">Açıklama</label>
                            <asp:TextBox ID="txtAciklama" runat="server" CssClass="form-control" MaxLength="100" />
                        </div>
                        <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="btnEkle_Click" />
                        <asp:Label ID="lblSonuc" runat="server" CssClass="mt-3 d-block text-success" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>

</body>
</html>
