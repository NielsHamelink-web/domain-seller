<?php

namespace App\Http\Controllers;

use App\Libraries\DomainPointer;
use App\Models\PostModel as Post;
use App\Models\PageModel as Page;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class HomeController extends Controller
{

    public function index($domain) {

        // Get domain data
        $domainPointer = new DomainPointer($domain);
        $domain_data = $domainPointer->getDomain();

        // Get posts of this domain
        $posts = Post::where([
            'domain_id' => $domain_data->id,
            'status' => 'published',
            'featured' => 1
        ])->get();

        // Get pages of this domain
        $pages = Page::where([
            'status' => 'ACTIVE',
            'domain_id' => $domain_data->id
        ])->get();

        // Show the view file
        return View::make('home', [
            'domain' => $domain,
            'domain_data' => $domain_data,
            'posts' => $posts,
            'pages' => $pages
        ]);
    
    }

}
