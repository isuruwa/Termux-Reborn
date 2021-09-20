.class public Lcom/termux/app/terminal/io/BellHandler;
.super Ljava/lang/Object;
.source "BellHandler.java"


# static fields
.field private static instance:Lcom/termux/app/terminal/io/BellHandler;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final bellRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private lastBell:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/termux/app/terminal/io/BellHandler;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Vibrator;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/app/terminal/io/BellHandler;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/termux/app/terminal/io/BellHandler;->lastBell:J

    .line 33
    new-instance v0, Lcom/termux/app/terminal/io/BellHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/terminal/io/BellHandler$1;-><init>(Lcom/termux/app/terminal/io/BellHandler;Landroid/os/Vibrator;)V

    iput-object v0, p0, Lcom/termux/app/terminal/io/BellHandler;->bellRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/termux/app/terminal/io/BellHandler;
    .locals 3

    .line 14
    sget-object v0, Lcom/termux/app/terminal/io/BellHandler;->instance:Lcom/termux/app/terminal/io/BellHandler;

    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/termux/app/terminal/io/BellHandler;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/termux/app/terminal/io/BellHandler;->instance:Lcom/termux/app/terminal/io/BellHandler;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/termux/app/terminal/io/BellHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    invoke-direct {v1, p0}, Lcom/termux/app/terminal/io/BellHandler;-><init>(Landroid/os/Vibrator;)V

    sput-object v1, Lcom/termux/app/terminal/io/BellHandler;->instance:Lcom/termux/app/terminal/io/BellHandler;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 22
    :cond_1
    :goto_0
    sget-object p0, Lcom/termux/app/terminal/io/BellHandler;->instance:Lcom/termux/app/terminal/io/BellHandler;

    return-object p0
.end method

.method private now()J
    .locals 2

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized doBell()V
    .locals 7

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/termux/app/terminal/io/BellHandler;->now()J

    move-result-wide v0

    .line 45
    iget-wide v2, p0, Lcom/termux/app/terminal/io/BellHandler;->lastBell:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x96

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 51
    iget-object v0, p0, Lcom/termux/app/terminal/io/BellHandler;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/app/terminal/io/BellHandler;->bellRunnable:Ljava/lang/Runnable;

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    iget-wide v0, p0, Lcom/termux/app/terminal/io/BellHandler;->lastBell:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/termux/app/terminal/io/BellHandler;->lastBell:J

    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/termux/app/terminal/io/BellHandler;->bellRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 56
    iput-wide v0, p0, Lcom/termux/app/terminal/io/BellHandler;->lastBell:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
