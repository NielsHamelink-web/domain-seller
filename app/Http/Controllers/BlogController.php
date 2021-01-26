<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;

use App\Libraries\DomainPointer;
use App\Models\PageModel as Page;
use App\Models\PostModel as Post;

class BlogController extends Controller
{
    //
    public function item($domain, $slug) {

        // Get domain data
        $domainPointer = new DomainPointer($domain);
        $domain_data = $domainPointer->getDomain();

        // Get pages of this domain
        $pages = Page::where([
            'status' => 'ACTIVE',
            'domain_id' => $domain_data->id
        ])->get();

        // Get the current blog post
        $item = Post::where([
            'slug' => $slug,
            'status' => 'published'
        ])->first();

        return View::make('blog', [
            'domain' => $domain,
            'pages' => $pages,
            'item' => $item
        ]);
    }
}
