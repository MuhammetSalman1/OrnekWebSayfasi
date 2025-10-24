<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Tasarım.Anasayfa" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ana Sayfa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Segoe UI', sans-serif;
        }

        .navbar-custom {
            background-color: #343a40;
        }

        .carousel-item img {
            height: 90vh;
            object-fit: cover;
            filter: brightness(0.7);
        }

        .carousel-caption {
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
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

        .animated-box img {
            width: 100%;
            height: 260px;
            object-fit: cover;
        }

        .animated-box h4 {
            font-size: 1.25rem;
            padding: 15px;
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

    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container">
            <a class="navbar-brand" href="AnaSayfa.aspx">AnaSayfa</a>
            <a class="navbar-brand" href="duyuru.aspx">Duyuru</a>
            <a class="navbar-brand" href="Admin/Resim.aspx">Resim</a>
            <a class="navbar-brand" href="SliderResimEkle.aspx">Slider Resim
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

<form id="form1" runat="server">
    <div id="slider" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
 <div class="container mt-4">
     <div id="sliderCarousel" class="carousel slide" data-bs-ride="carousel">
         <div class="carousel-inner">
             <asp:Repeater ID="sliderRepeater" runat="server">
                 <ItemTemplate>
                     <div class='<%# GetActiveClass(Container.ItemIndex) %>'>
                         <img src='<%# Eval("ResimUrl") %>' class="d-block w-100" style="height:800px; width:auto; object-fit:cover;" alt="Slider Resmi" />
                         <div class="carousel-caption d-none d-md-block">
                             <h5><%# Eval("Aciklama") %></h5>
                         </div>
                     </div>
                 </ItemTemplate>
             </asp:Repeater>
         </div>
         <button class="carousel-control-prev" type="button" data-bs-target="#sliderCarousel" data-bs-slide="prev">
             <span class="carousel-control-prev-icon"></span>
         </button>
         <button class="carousel-control-next" type="button" data-bs-target="#sliderCarousel" data-bs-slide="next">
             <span class="carousel-control-next-icon"></span>
         </button>
     </div>
 </div>

        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#slider" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Önceki</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#slider" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Sonraki</span>
        </button>
    </div>
</form>

<div class="container py-5">
    <div class="row g-4">



        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
        <div class="col-md-4" data-aos="fade-up">
            <div class="animated-box">
                <img src="./foto/" alt="RESİM">
                <h4>RESİM AÇIKLAMASI</h4>
            </div>
        </div>
    </div>
</div>

<footer class="text-center">
    <p class="mb-0">
                 © FORCED BEAUTY ONLY HAPPENS İN THE GYM...
    </p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>
