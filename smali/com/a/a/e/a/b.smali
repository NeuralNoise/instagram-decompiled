.class Lcom/a/a/e/a/b;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/util/concurrent/Executor;


# virtual methods
.method a()V
    .locals 5

    .prologue
    .line 178
    invoke-static {}, Lcom/a/a/e/a/a;->b()Lcom/a/a/e/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/a/a/e/a/b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/a/a/e/a/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 185
    invoke-static {}, Lcom/a/a/e/a/a;->c()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/e/a/b;->a:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/e/a/b;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/e/a/b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/a/a/e/a/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    invoke-static {}, Lcom/a/a/e/a/a;->b()Lcom/a/a/e/a/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/e/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
