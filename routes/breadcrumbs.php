<?php

use Diglactic\Breadcrumbs\Breadcrumbs;

use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

// Home
Breadcrumbs::for('dashboard', function (BreadcrumbTrail $trail) {
    $trail->push('Dashboard', route('dashboard.index'));
});

Breadcrumbs::for('roles', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Roles', route('setting.roles.index'));
});

Breadcrumbs::for('permissions', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Permissions', route('setting.permissions.index'));
});

Breadcrumbs::for('settings', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Settings', route('setting.settings.index'));
});

Breadcrumbs::for('profile', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Profile', route('account.profile.index'));
});

Breadcrumbs::for('menu', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Menu', route('master.menu.index'));
});

Breadcrumbs::for('myProfile', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('My Profile', route('myProfile.index'));
});

Breadcrumbs::for('dataStatis', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Data Statis', route('master.dataStatis.index'));
});
Breadcrumbs::for('users', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Users', route('setting.users.index'));
});


Breadcrumbs::for('kelas', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Kelas', route('kelas.index'));
});

Breadcrumbs::for('siswa', function (BreadcrumbTrail $trail) {
    $trail->parent('dashboard');
    $trail->push('Siswa', route('siswa.index'));
});

Breadcrumbs::for('nilaiSiswa', function (BreadcrumbTrail $trail) {
    $trail->parent('siswa');
    $trail->push('Nilai Siswa', url('master/nilaiSiswa?siswa_id=' . request()->query('siswa_id')));
});
