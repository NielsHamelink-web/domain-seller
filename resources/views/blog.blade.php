@extends('template.master')

@section('title', $item->seo_title)
@section('meta_description', $item->meta_description)

@section('pages')

    <?php foreach ($pages as $page) { ?>
        <li class="nav-item">
            <a class="nav-link" href="/<?= $page->slug ?>">test</a>
        </li>
    <?php } ?>

@stop

@section('content')
    
    <h1 class="mt-3"><?= $item->title ?></h1>

    <div class="card">
        <div class="row g-0">
            <div class="col-md-6">
                <img src="/storage/<?= $item->image ?>" class="w-100" alt="<?= $item->title ?>">
            </div>

            <div class="col-md-6">
                <div class="card-body">
                    <?= $item->body ?>
                </div>
            </div>
        </div>
    </div>


@stop