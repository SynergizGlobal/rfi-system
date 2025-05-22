package com.sys.rfi.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sys.rfi.model.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
