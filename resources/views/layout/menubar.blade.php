<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <nav class="navbar navbar-expand-lg bg-body-tertiary ">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{route('admin.home')}}">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Category
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="{{route('admin.category', ['subject'=> 1 ])}}">Interactive Multimedia</a></li>
              <li><a class="dropdown-item" href="{{route('admin.category', ['subject'=> 2 ])}}">Software Engineering</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.writer')}}">Writers</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.about')}}">About Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.popular')}}">Popular</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

