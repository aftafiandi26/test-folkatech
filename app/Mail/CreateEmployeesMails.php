<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\employees;

class CreateEmployeesMails extends Mailable
{
    use Queueable, SerializesModels;

    protected $employees;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(employees $employees)
    {
        $this->employees = $employees;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('example@example.com', 'Example')
            ->view('emails.createEmployees')
            ->with([
                'firstname'     => $this->employees->firstname,
                'lastname'     => $this->employees->lastname,
                'email'     => $this->employees->email,
                'phone'     => $this->employees->phone,
            ]);
    }
}
