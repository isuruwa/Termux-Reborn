.class public Lcom/termux/shared/file/filesystem/FileAttributes;
.super Ljava/lang/Object;
.source "FileAttributes.java"


# instance fields
.field private fileDescriptor:Ljava/io/FileDescriptor;

.field private filePath:Ljava/lang/String;

.field private volatile group:Ljava/lang/String;

.field private volatile owner:Ljava/lang/String;

.field private st_atime_nsec:J

.field private st_atime_sec:J

.field private st_blksize:J

.field private st_blocks:J

.field private st_ctime_nsec:J

.field private st_ctime_sec:J

.field private st_dev:J

.field private st_gid:I

.field private st_ino:J

.field private st_mode:I

.field private st_mtime_nsec:J

.field private st_mtime_sec:J

.field private st_nlink:J

.field private st_rdev:J

.field private st_size:J

.field private st_uid:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->filePath:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lcom/termux/shared/file/filesystem/FileAttributes;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/termux/shared/file/filesystem/FileAttributes;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    new-instance v0, Lcom/termux/shared/file/filesystem/FileAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/shared/file/filesystem/FileAttributes;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 89
    invoke-static {p0, v0}, Lcom/termux/shared/file/filesystem/NativeDispatcher;->stat(Ljava/lang/String;Lcom/termux/shared/file/filesystem/FileAttributes;)V

    goto :goto_2

    .line 91
    :cond_2
    invoke-static {p0, v0}, Lcom/termux/shared/file/filesystem/NativeDispatcher;->lstat(Ljava/lang/String;Lcom/termux/shared/file/filesystem/FileAttributes;)V

    :goto_2
    return-object v0
.end method

.method public static getFileAttributesLogString(Lcom/termux/shared/file/filesystem/FileAttributes;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getFileString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getSizeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getBlocksString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getIOBlockString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getDeviceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getInodeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getLinksString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isBlock()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isCharacter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getDeviceTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getGroupString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getPermissionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getAccessTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getModifiedTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getChangeTimeString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toFileTime(JJ)Lcom/termux/shared/file/filesystem/FileTime;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 159
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2}, Lcom/termux/shared/file/filesystem/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    .line 164
    div-long/2addr p2, v0

    add-long/2addr p0, p2

    .line 165
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2}, Lcom/termux/shared/file/filesystem/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blksize()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_blksize:J

    return-wide v0
.end method

.method public blocks()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_blocks:J

    return-wide v0
.end method

.method public file()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->fileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessTimeString()Ljava/lang/String;
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access Time: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->lastAccessTime()Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlocksString()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocks: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->blocks()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeTimeString()Ljava/lang/String;
    .locals 2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Time: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->lastChangeTime()Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceString()Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_dev:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTypeString()Ljava/lang/String;
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device Type: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->rdev()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileString()Ljava/lang/String;
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->file()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupString()Ljava/lang/String;
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIOBlockString()Ljava/lang/String;
    .locals 3

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IO Block: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->blksize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInodeString()Ljava/lang/String;
    .locals 3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inode: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ino:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinksString()Ljava/lang/String;
    .locals 3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Links: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->nlink()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedTimeString()Ljava/lang/String;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modified Time: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->lastModifiedTime()Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Owner: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->owner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionString()Ljava/lang/String;
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permissions: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->permissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/file/filesystem/FilePermissions;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeString()Ljava/lang/String;
    .locals 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/termux/shared/file/filesystem/FileTypes;->getFileType(Lcom/termux/shared/file/filesystem/FileAttributes;)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->group:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 253
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_gid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->group:Ljava/lang/String;

    .line 255
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 257
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->group:Ljava/lang/String;

    return-object v0
.end method

.method public isBlock()Z
    .locals 2

    .line 206
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFBLK:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCharacter()Z
    .locals 2

    .line 198
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFCHR:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 190
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFDIR:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFifo()Z
    .locals 2

    .line 202
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFIFO:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRegularFile()Z
    .locals 2

    .line 186
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFREG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSymbolicLink()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFLNK:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastAccessTime()Lcom/termux/shared/file/filesystem/FileTime;
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_atime_sec:J

    iget-wide v2, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_atime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/file/filesystem/FileAttributes;->toFileTime(JJ)Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public lastChangeTime()Lcom/termux/shared/file/filesystem/FileTime;
    .locals 4

    .line 178
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ctime_sec:J

    iget-wide v2, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ctime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/file/filesystem/FileAttributes;->toFileTime(JJ)Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public lastModifiedTime()Lcom/termux/shared/file/filesystem/FileTime;
    .locals 4

    .line 174
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mtime_sec:J

    iget-wide v2, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mtime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/file/filesystem/FileAttributes;->toFileTime(JJ)Lcom/termux/shared/file/filesystem/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public loadFromStructStat(Landroid/system/StructStat;)V
    .locals 4

    .line 289
    iget v0, p1, Landroid/system/StructStat;->st_mode:I

    iput v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    .line 290
    iget-wide v0, p1, Landroid/system/StructStat;->st_ino:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ino:J

    .line 291
    iget-wide v0, p1, Landroid/system/StructStat;->st_dev:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_dev:J

    .line 292
    iget-wide v0, p1, Landroid/system/StructStat;->st_rdev:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_rdev:J

    .line 293
    iget-wide v0, p1, Landroid/system/StructStat;->st_nlink:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_nlink:J

    .line 294
    iget v0, p1, Landroid/system/StructStat;->st_uid:I

    iput v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_uid:I

    .line 295
    iget v0, p1, Landroid/system/StructStat;->st_gid:I

    iput v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_gid:I

    .line 296
    iget-wide v0, p1, Landroid/system/StructStat;->st_size:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_size:J

    .line 297
    iget-wide v0, p1, Landroid/system/StructStat;->st_blksize:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_blksize:J

    .line 298
    iget-wide v0, p1, Landroid/system/StructStat;->st_blocks:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_blocks:J

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 301
    iget-object v0, p1, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v1, v0, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v1, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_atime_sec:J

    .line 302
    iget-wide v0, v0, Landroid/system/StructTimespec;->tv_nsec:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_atime_nsec:J

    .line 303
    iget-object v0, p1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-wide v1, v0, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v1, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mtime_sec:J

    .line 304
    iget-wide v0, v0, Landroid/system/StructTimespec;->tv_nsec:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mtime_nsec:J

    .line 305
    iget-object p1, p1, Landroid/system/StructStat;->st_ctim:Landroid/system/StructTimespec;

    iget-wide v0, p1, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ctime_sec:J

    .line 306
    iget-wide v0, p1, Landroid/system/StructTimespec;->tv_nsec:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ctime_nsec:J

    goto :goto_0

    .line 308
    :cond_0
    iget-wide v0, p1, Landroid/system/StructStat;->st_atime:J

    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_atime_sec:J

    const-wide/16 v0, 0x0

    .line 309
    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_atime_nsec:J

    .line 310
    iget-wide v2, p1, Landroid/system/StructStat;->st_mtime:J

    iput-wide v2, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mtime_sec:J

    .line 311
    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mtime_nsec:J

    .line 312
    iget-wide v2, p1, Landroid/system/StructStat;->st_ctime:J

    iput-wide v2, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ctime_sec:J

    .line 313
    iput-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_ctime_nsec:J

    :goto_0
    return-void
.end method

.method public nlink()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_nlink:J

    return-wide v0
.end method

.method public owner()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->owner:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->owner:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 242
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_uid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->owner:Ljava/lang/String;

    .line 244
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public permissions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/termux/shared/file/filesystem/FilePermission;",
            ">;"
        }
    .end annotation

    .line 261
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_mode:I

    sget v1, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IAMB:I

    and-int/2addr v0, v1

    .line 262
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 264
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IRUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_0

    .line 265
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IWUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_1

    .line 267
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IXUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_2

    .line 269
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IRGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_3

    .line 272
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_3
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IWGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_4

    .line 274
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_4
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IXGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_5

    .line 276
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_5
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IROTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_6

    .line 279
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_6
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IWOTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_7

    .line 281
    sget-object v2, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_7
    sget v2, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IXOTH:I

    and-int/2addr v0, v2

    if-lez v0, :cond_8

    .line 283
    sget-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v1
.end method

.method public rdev()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_rdev:J

    return-wide v0
.end method

.method public size()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/termux/shared/file/filesystem/FileAttributes;->st_size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 380
    invoke-static {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->getFileAttributesLogString(Lcom/termux/shared/file/filesystem/FileAttributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
