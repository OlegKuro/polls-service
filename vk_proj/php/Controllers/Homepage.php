<?php declare(strict_types = 1);

namespace Controllers;

use Utils\Http\Response;

class Homepage
{
    private $response;

    public function __construct(Response $response)
    {
        $this->response = $response;
    }

    public function show()
    {
        $this->response->setContent('Test routing');
    }
}