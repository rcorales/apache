node default{
}

node   "centos2.cf" {
        notify { ' This is only a test node02 ': }
        include localusers
        include localusers::groups::finance
        include localusers::groups::wheel
}

node  "centos3.cf" {
        notify { ' This is only a test node03 ': }
        include apache

}

node  "centos4.cf" {
        notify { ' This is only a test node04 ': }

}
