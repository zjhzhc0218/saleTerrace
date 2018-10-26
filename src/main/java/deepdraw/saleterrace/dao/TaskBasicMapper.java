package deepdraw.saleterrace.dao;

import deepdraw.saleterrace.entity.shop.TaskBasic;
import org.springframework.stereotype.Component;

@Component
public interface TaskBasicMapper {
    /**
     *
     * @mbggenerated 2018-10-25
     */
    int deleteByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insert(TaskBasic record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int insertSelective(TaskBasic record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    TaskBasic selectByPrimaryKey(Long taskId);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKeySelective(TaskBasic record);

    /**
     *
     * @mbggenerated 2018-10-25
     */
    int updateByPrimaryKey(TaskBasic record);
}