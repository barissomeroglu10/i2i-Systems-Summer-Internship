public interface IEntityRepository<T extends IEntity> { // extends --> makes generic constraint
    // a kind of agreement
    void add(T entity);
    void delete(T entity);
    void update(T entity);

}
