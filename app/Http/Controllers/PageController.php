<?php

namespace App\Http\Controllers;

use App\About;
use App\AboutItem;
use App\Artist;
use App\Blog;
use App\Contact;
use App\Event;
use App\Hero;
use App\Roadmann;
use App\Subscriber;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{
    public function init()
    {
        $hero = Hero::first();
        $about = About::first();
        $aboutitem = AboutItem::all();
        $artist = Artist::all();
        $blog = Blog::all();
        $contact = Contact::all();
        // get current month and current year data
        $thisMonth = Event::whereYear('date', Carbon::now()->year)
                    ->whereMonth('date', Carbon::now()->month)
                    ->get();
        // get > current month data
        $upcoming = Event::where('date', '>', Carbon::now()->addMonth(1))
                    ->get();
        $roadmann = Roadmann::all();


        return response()->json(compact(
            'hero',
            'about',
            'aboutitem',
            'artist',
            'blog',
            'contact',
            'thisMonth',
            'upcoming',
            'roadmann'
        ));
    }

    public function get_blog($slug)
    {
        return response()->json(Blog::where('slug', $slug)->firstOrFail());
    }

    public function get_artist($slug)
    {
        return response()->json(Artist::where('slug', $slug)->firstOrFail());
    }

    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);
        if ($validate->fails()) {
            return response()->json($validate->errors());
        }
        $contact = new Contact;
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->message = $request->message;
        $contact->save();

        return response()->json(true);
    }

    public function subscribe(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'email' => 'required|email',
        ]);
        if ($validate->fails()) {
            return response()->json($validate->errors());
        }
        $subs = new Subscriber();
        $subs->email = $request->email;
        $subs->save();

        return response()->json(true);
    }
}
