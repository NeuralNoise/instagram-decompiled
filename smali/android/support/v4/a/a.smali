.class public abstract Landroid/support/v4/a/a;
.super Landroid/support/v4/a/c;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/a/c",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/support/v4/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/support/v4/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;)V

    .line 88
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/a/a;->mLastLoadCompleteTime:J

    .line 93
    return-void
.end method


# virtual methods
.method public cancelLoad()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iget-boolean v1, v1, Landroid/support/v4/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iput-boolean v0, v1, Landroid/support/v4/a/b;->b:Z

    .line 144
    iget-object v1, p0, Landroid/support/v4/a/a;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    iput-object v3, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    .line 166
    :cond_1
    :goto_0
    return v0

    .line 148
    :cond_2
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iget-boolean v1, v1, Landroid/support/v4/a/b;->b:Z

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iput-boolean v0, v1, Landroid/support/v4/a/b;->b:Z

    .line 153
    iget-object v1, p0, Landroid/support/v4/a/a;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-object v3, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    goto :goto_0

    .line 157
    :cond_3
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/b;->a(Z)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iput-object v1, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    .line 162
    :cond_4
    iput-object v3, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    goto :goto_0
.end method

.method dispatchOnCancelled(Landroid/support/v4/a/b;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;TD;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Landroid/support/v4/a/a;,"Landroid/support/v4/a/a<TD;>;"
    .local p1, task:Landroid/support/v4/a/b;,"Landroid/support/v4/a/a<TD;>.android/support/v4/a/b;"
    .local p2, data:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p2}, Landroid/support/v4/a/a;->onCanceled(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    if-ne v0, p1, :cond_0

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/a/a;->mLastLoadCompleteTime:J

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    .line 205
    invoke-virtual {p0}, Landroid/support/v4/a/a;->executePendingTask()V

    .line 207
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Landroid/support/v4/a/b;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/a",
            "<TD;>.android/support/v4/a/b;TD;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Landroid/support/v4/a/a;,"Landroid/support/v4/a/a<TD;>;"
    .local p1, task:Landroid/support/v4/a/b;,"Landroid/support/v4/a/a<TD;>.android/support/v4/a/b;"
    .local p2, data:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    if-eq v0, p1, :cond_0

    .line 212
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/a/a;->dispatchOnCancelled(Landroid/support/v4/a/b;Ljava/lang/Object;)V

    .line 224
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/a/a;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0, p2}, Landroid/support/v4/a/a;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/a/a;->mLastLoadCompleteTime:J

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    .line 221
    invoke-virtual {p0, p2}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 266
    .local p0, this:Landroid/support/v4/a/a;,"Landroid/support/v4/a/a<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/a/c;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 269
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iget-boolean v0, v0, Landroid/support/v4/a/b;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 273
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    iget-boolean v0, v0, Landroid/support/v4/a/b;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 275
    :cond_1
    iget-wide v0, p0, Landroid/support/v4/a/a;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget-wide v0, p0, Landroid/support/v4/a/a;->mUpdateThrottle:J

    invoke-static {v0, v1, p3}, Landroid/support/v4/c/e;->a(JLjava/io/PrintWriter;)V

    .line 278
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide v0, p0, Landroid/support/v4/a/a;->mLastLoadCompleteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/c/e;->a(JJLjava/io/PrintWriter;)V

    .line 281
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 283
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 6

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/a/a;->mCancellingTask:Landroid/support/v4/a/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iget-boolean v0, v0, Landroid/support/v4/a/b;->b:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/a/b;->b:Z

    .line 180
    iget-object v0, p0, Landroid/support/v4/a/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    iget-wide v0, p0, Landroid/support/v4/a/a;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    iget-wide v2, p0, Landroid/support/v4/a/a;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroid/support/v4/a/a;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 189
    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/a/b;->b:Z

    .line 190
    iget-object v0, p0, Landroid/support/v4/a/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    iget-wide v2, p0, Landroid/support/v4/a/a;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroid/support/v4/a/a;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    iget-object v1, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    sget-object v2, Landroid/support/v4/a/i;->d:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/b;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/a/i;

    goto :goto_0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Landroid/support/v4/a/a;,"Landroid/support/v4/a/a<TD;>;"
    .local p1, data:Ljava/lang/Object;,"TD;"
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/a/c;->onForceLoad()V

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/a/a;->cancelLoad()Z

    .line 113
    new-instance v0, Landroid/support/v4/a/b;

    invoke-direct {v0, p0}, Landroid/support/v4/a/b;-><init>(Landroid/support/v4/a/a;)V

    iput-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    .line 115
    invoke-virtual {p0}, Landroid/support/v4/a/a;->executePendingTask()V

    .line 116
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/support/v4/a/a;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 2
    .parameter "delayMS"

    .prologue
    .line 103
    .local p0, this:Landroid/support/v4/a/a;,"Landroid/support/v4/a/a<TD;>;"
    iput-wide p1, p0, Landroid/support/v4/a/a;->mUpdateThrottle:J

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/a;->mHandler:Landroid/os/Handler;

    .line 107
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v4/a/a;->mTask:Landroid/support/v4/a/b;

    .line 255
    if-eqz v0, :cond_0

    .line 257
    :try_start_0
    invoke-static {v0}, Landroid/support/v4/a/b;->a(Landroid/support/v4/a/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method
