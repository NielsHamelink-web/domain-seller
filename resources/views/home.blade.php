@extends('template.master')

@section('title', $domain . ' domain for sale')

@section('pages')

    <?php foreach ($pages as $page) { ?>
        <li class="nav-item">
            <a class="nav-link" href="/<?= $page->slug ?>">test</a>
        </li>
    <?php } ?>

@stop

@section('content')
    
    <div class="row mt-3">
        <?php foreach ($posts as $post) { ?>
            <div class="col-sm-4">

                <div class="card">
                    <img src="storage/<?= $post->image ?>" class="card-img-top" alt="<?= $post->title ?>">
                    <div class="card-body">
                        <h5 class="card-title"><?= $post->title ?></h5>
                        <p class="card-text"><?= $post->excerpt ?></p>
                        <a href="/blog/<?= $post->slug ?>" class="btn btn-primary">More information</a>
                    </div>
                </div>

            </div>
        <?php } ?>
    </div>

@stop