<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

use App\Libraries\DomainPointer;
use App\Models\PageModel as Page;

class PageController extends Controller
{
    //
    public function index($domain, $slug) {

        // Get domain data
        $domainPointer = new DomainPointer($domain);
        $domain_data = $domainPointer->getDomain();

        // Get pages of this domain
        $pages = Page::where([
            'status' => 'ACTIVE',
            'domain_id' => $domain_data->id
        ])->get();

        // Get the current page by slug
        $current_page = Page::where([
            'status' => 'ACTIVE',
            'domain_id' => $domain_data->id,
            'slug' => $slug
        ])->first();

        return View::make('page', [
            'domain' => $domain,
            'pages' => $pages,
            'current_page' => $current_page
        ]);
    }
}
