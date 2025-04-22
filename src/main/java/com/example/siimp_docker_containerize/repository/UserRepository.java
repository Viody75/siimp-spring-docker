package com.example.siimp_docker_containerize.repository;

import com.example.siimp_docker_containerize.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {}
