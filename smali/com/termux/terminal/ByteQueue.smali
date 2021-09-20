.class final Lcom/termux/terminal/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private final mBuffer:[B

.field private mHead:I

.field private mOpen:Z

.field private mStoredBytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 12
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 16
    :try_start_0
    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BZ)I
    .locals 8

    monitor-enter p0

    .line 21
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 24
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :cond_0
    monitor-exit p0

    return v1

    .line 32
    :cond_1
    :try_start_2
    iget-boolean p2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_2

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 35
    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length p2, p2

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 37
    :goto_1
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_2
    if-lez v2, :cond_5

    .line 39
    iget v5, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-lez v5, :cond_5

    .line 40
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    sub-int v6, p2, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 41
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 42
    iget-object v6, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    iget v7, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    invoke-static {v6, v7, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    if-lt v6, p2, :cond_4

    .line 44
    iput v1, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    .line 45
    :cond_4
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int/2addr v2, v5

    add-int/2addr v4, v5

    add-int/2addr v3, v5

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    :cond_6
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([BII)Z
    .locals 6

    add-int v0, p3, p2

    .line 60
    array-length v1, p1

    if-gt v0, v1, :cond_8

    if-lez p3, :cond_7

    .line 66
    iget-object v0, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v0, v0

    .line 68
    monitor-enter p0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-lez p3, :cond_6

    .line 70
    :catch_0
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-ne v0, v2, :cond_1

    iget-boolean v3, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 72
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    monitor-exit p0

    return v4

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    sub-int v2, v0, v2

    .line 79
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p3, v2

    :goto_3
    if-lez v2, :cond_5

    .line 83
    iget v3, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    iget v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v4, v3

    if-lt v4, v0, :cond_4

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    goto :goto_4

    :cond_4
    sub-int v3, v0, v4

    .line 97
    :goto_4
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 98
    iget-object v5, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    invoke-static {p1, p2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    sub-int/2addr v2, v3

    .line 101
    iget v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 105
    :cond_6
    monitor-exit p0

    return v1

    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 63
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length + offset > buffer.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
