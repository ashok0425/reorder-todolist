<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Title extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $title;
    public $add;
    public $route;


    public function __construct($title,$add=null,$route=null)
    {
       $this->title=$title;
       $this->add=$add;
       $this->route=$route;


    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.title');
    }
}
