.class public Lcom/termux/shared/shell/StreamGobbler;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;,
        Lcom/termux/shared/shell/StreamGobbler$OnLineListener;
    }
.end annotation


# static fields
.field private static threadCounter:I


# instance fields
.field private volatile active:Z

.field private volatile calledOnClose:Z

.field private final lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

.field private final listWriter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Ljava/io/BufferedReader;

.field private final shell:Ljava/lang/String;

.field private final streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

.field private final stringWriter:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gobbler#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/termux/shared/shell/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 135
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    .line 137
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    .line 140
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    .line 141
    iput-object p3, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    .line 142
    iput-object p1, p0, Lcom/termux/shared/shell/StreamGobbler;->lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

    return-void
.end method

.method private static incThreadCounter()I
    .locals 3

    .line 43
    const-class v0, Lcom/termux/shared/shell/StreamGobbler;

    monitor-enter v0

    .line 44
    :try_start_0
    sget v1, Lcom/termux/shared/shell/StreamGobbler;->threadCounter:I

    add-int/lit8 v2, v1, 0x1

    .line 45
    sput v2, Lcom/termux/shared/shell/StreamGobbler;->threadCounter:I

    .line 46
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 174
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    const-string v3, "StreamGobbler"

    .line 182
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "[%s] %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/termux/shared/shell/StreamGobbler;->shell:Ljava/lang/String;

    aput-object v8, v6, v7

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->stringWriter:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->listWriter:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_3
    iget-object v3, p0, Lcom/termux/shared/shell/StreamGobbler;->lineListener:Lcom/termux/shared/shell/StreamGobbler$OnLineListener;

    if-eqz v3, :cond_4

    invoke-interface {v3, v2}, Lcom/termux/shared/shell/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    .line 187
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/termux/shared/shell/StreamGobbler;->active:Z

    if-nez v2, :cond_0

    .line 188
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x80

    .line 190
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 194
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    :catch_1
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    if-eqz v0, :cond_5

    .line 200
    iput-boolean v1, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 201
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    invoke-interface {v0}, Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    .line 207
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 212
    :catch_2
    iget-boolean v0, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    if-nez v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    if-eqz v0, :cond_6

    .line 214
    iput-boolean v1, p0, Lcom/termux/shared/shell/StreamGobbler;->calledOnClose:Z

    .line 215
    iget-object v0, p0, Lcom/termux/shared/shell/StreamGobbler;->streamClosedListener:Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;

    invoke-interface {v0}, Lcom/termux/shared/shell/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    :cond_6
    return-void
.end method
