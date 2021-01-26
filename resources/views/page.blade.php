@extends('template.master')

@section('title', $current_page->title)
@section('meta_description', $current_page->meta_description)

@section('pages')

    <?php foreach ($pages as $page) { ?>
        <li class="nav-item">
            <a class="nav-link" href="/<?= $page->slug ?>">test</a>
        </li>
    <?php } ?>

@stop

@section('content')
    
    <h1 class="mt-3"><?= $current_page->title ?></h1>

    <div class="card">
        <div class="row g-0">
            <div class="col-md-6">
                <img src="/storage/<?= $current_page->image ?>" class="w-100" alt="<?= $current_page->title ?>">
            </div>

            <div class="col-md-6">
                <div class="card-body">
                    <?= $current_page->body ?>
                </div>
            </div>
        </div>
    </div>


@stop