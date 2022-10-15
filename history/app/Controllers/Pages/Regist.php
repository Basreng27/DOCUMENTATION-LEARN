<?php

namespace App\Controllers\Regist;

use App\Controllers\BaseController;
use App\Models\UsersModel;

class Regist extends BaseController
{
    protected $UsersModel;
    public function __construct()
    {
        $this->UsersModel = new UsersModel();
    }

    public function prosesRegist()
    {
        $tombol = $this->request->getVar('tombol');
        if ($tombol == 'back') {
            return redirect()->to('/');
        } else {
            if (!$this->validate([
                'username' => [
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} harus diisi'
                    ]
                ],
                'password' => [
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} harus diisi'
                    ]
                ],
                'name' => [
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} harus diisi'
                    ]
                ]
            ])) {
                return redirect()->to('/');
            }

            $username = $this->request->getVar('username');
            $password = $this->request->getVar('password');
            $name = $this->request->getVar('name');
            $level = 3; //level 3 for user
            $stat = 1; //true or false active user

            $data_user = [
                'username' => $username,
                'password' => $password,
                'name' => $name,
                'level' => $level,
                'stat' => $stat
            ];

            $this->UsersModel->save($data_user);

            return redirect()->to('/');
        }
    }
}
