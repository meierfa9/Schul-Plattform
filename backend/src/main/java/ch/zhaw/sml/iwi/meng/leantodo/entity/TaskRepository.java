package ch.zhaw.sml.iwi.meng.leantodo.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.security.access.annotation.Secured;

public interface TaskRepository extends JpaRepository<Task, Long>{
    /*
    @Override
    @Secured("ROLE_TEACHER")
    <S extends Task> S save(S entity);

    @Override
    @RestResource(exported = false)
    void deleteById(Long id);
    */
}
