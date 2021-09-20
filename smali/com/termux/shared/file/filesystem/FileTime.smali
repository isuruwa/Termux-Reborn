.class public final Lcom/termux/shared/file/filesystem/FileTime;
.super Ljava/lang/Object;
.source "FileTime.java"


# instance fields
.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final value:J


# direct methods
.method private constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Lcom/termux/shared/file/filesystem/FileTime;->value:J

    .line 76
    iput-object p3, p0, Lcom/termux/shared/file/filesystem/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static from(JLjava/util/concurrent/TimeUnit;)Lcom/termux/shared/file/filesystem/FileTime;
    .locals 1

    const-string v0, "unit"

    .line 92
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/termux/shared/file/filesystem/FileTime;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/shared/file/filesystem/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static getDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 148
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 152
    :catch_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toMillis()J
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/termux/shared/file/filesystem/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileTime;->toMillis()J

    move-result-wide v0

    const-string v2, "yyyy.MM.dd HH:mm:ss.SSS z"

    invoke-static {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FileTime;->getDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
