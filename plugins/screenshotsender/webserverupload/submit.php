<?php
// ---------------------------------------------------
// Functions included and modified from other files. Required to use with the http interface of cod4x18server
// ---------------------------------------------------
require_once('config.php');

//Entry point is here

    $values = array();
    $rawdata = file_get_contents('php://input');
    mb_parse_str($rawdata, $values);

    if(!isset($values["identkey"])){
        $response = array('status' => 'invalid_inputparamters');
        echo http_build_query($response);
        return;
    }

    if($values["identkey"] !== $identkey){
        $response = array('status' => 'invalid_identkey');
        echo http_build_query($response);
        return;
    }


    if($identkey == "ChangeMe")
    {
        $response = array('status' => 'change_default_identkey');
        echo http_build_query($response);
        return;
    }

    file_put_contents("input.txt", var_export($values, true));

    $response = array();
    $authid = "";

    if(!isset($values["command"]))
    {
        $response = array('status' => 'invalid_inputparamters');
    }else{
        if($values["command"] == "HELO")
        {
            if(empty($values['gamename']) || empty($values['gamedir']))
            {
                $response = array(
                'status' => "Error: Empty gamename or gamedir value");
            }else if(empty($_SERVER['REMOTE_ADDR']) || empty($values['serverport'])){
                $response = array(
                'status' => "Error: Empty serverip or serverport value");

            }else if(empty($values['rcon'])){
                $response = array(
                'status' => "Error: Empty rcon value");
            }else{

                //$ret = AddServer($_SERVER['REMOTE_ADDR'], $values['serverport'], $values['rcon']);
                $ret = "success";
                if($ret !== "success" && $ret !== "Already present")
                {
                    $response = array(
                    'status' => $ret);
                }else{
                    $response = array(
                    'status' => 'okay');
                }
            }

        }else if($values["command"] == "submitshot"){
            if(empty($values['serverport']) || empty($values['data']))
            {
                $response = array(
                'status' => "Error: Empty serverport or data value");
            }else{
                $jpeg = base64_decode(strtr($values['data'], '-_#', '+/='), true);
                if($jpeg != FALSE)
                {
                    file_put_contents("test.jpg", $jpeg); //Do something useful with it here. Parse it and store it.

                    $response = array('status' => 'success');
                }else{
                    $response = array('status' => 'failure');
                }
            }

        }else{

            $response = array('status' => 'invalid_command');
        }

    }

    file_put_contents("output.txt", var_export($response, true));
    file_put_contents("outputraw.txt", http_build_query($response));

    echo http_build_query($response);





