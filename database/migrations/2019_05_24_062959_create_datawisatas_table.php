<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDatawisatasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('datawisatas', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_kota');
            $table->integer('id_jenis_wisata');
            $table->string('nama_wisata');
            $table->string('foto');
            $table->string('keterangan');
            $table->string('fasilitas');
            $table->string('harga');
            $table->time('jam_buka');
            $table->time('jam_tutup');
            $table->float('latitude');
            $table->float('longitude');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('datawisatas');
    }
}
