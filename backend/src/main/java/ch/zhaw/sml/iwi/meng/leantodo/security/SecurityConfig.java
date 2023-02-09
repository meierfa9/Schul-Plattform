package ch.zhaw.sml.iwi.meng.leantodo.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import static org.springframework.boot.autoconfigure.security.servlet.PathRequest.toH2Console;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class SecurityConfig {
    @Bean
    public UserDetailsService userDetailsService(BCryptPasswordEncoder bCryptPasswordEncoder) {
        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
        manager.createUser(User.withUsername("meierfa9")
                .password(bCryptPasswordEncoder.encode("meierfa9pass"))
                .roles("Student")
                .build());
        manager.createUser(User.withUsername("mettlanj")
                .password(bCryptPasswordEncoder.encode("mettlanjpass"))
                .roles("Student")
                .build());
        manager.createUser(User.withUsername("beckema2")
                .password(bCryptPasswordEncoder.encode("beckema2pass"))
                .roles("Student")
                .build());
        manager.createUser(User.withUsername("heip")
                .password(bCryptPasswordEncoder.encode("heippass"))
                .roles("Student", "Teacher")
                .build());
        manager.createUser(User.withUsername("meix")
                .password(bCryptPasswordEncoder.encode("meixpass"))
                .roles("Student", "Teacher")
                .build());
        return manager;
    }

    @Bean
    public AuthenticationManager authenticationManager(HttpSecurity http, BCryptPasswordEncoder bCryptPasswordEncoder,
            UserDetailsService userDetailsService)
            throws Exception {
        return http.getSharedObject(AuthenticationManagerBuilder.class)
                .userDetailsService(userDetailsService)
                .passwordEncoder(bCryptPasswordEncoder)
                .and()
                .build();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests()
                .requestMatchers(toH2Console()).permitAll()
                .anyRequest().authenticated()
                .and().httpBasic().and()
                .csrf().ignoringRequestMatchers(toH2Console()).and()
                .headers().frameOptions().sameOrigin();
        return http.build();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

}
