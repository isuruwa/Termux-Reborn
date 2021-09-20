.class public Lcom/termux/shared/file/filesystem/FileTypes;
.super Ljava/lang/Object;
.source "FileTypes.java"


# static fields
.field public static final FILE_TYPE_NORMAL_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v1}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v1}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    return-void
.end method

.method public static convertFileTypeFlagsToNamesString(I)Ljava/lang/String;
    .locals 8

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v2, v1, [Lcom/termux/shared/file/filesystem/FileType;

    .line 22
    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v5, 0x6

    aput-object v3, v2, v5

    move v3, v4

    :goto_0
    const-string v5, ","

    if-ge v3, v1, :cond_1

    .line 23
    aget-object v6, v2, v3

    .line 24
    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v7

    and-int/2addr v7, p0

    if-lez v7, :cond_0

    .line 25
    invoke-virtual {v6}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getFileType(Lcom/termux/shared/file/filesystem/FileAttributes;)Lcom/termux/shared/file/filesystem/FileType;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isRegularFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isFifo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/termux/shared/file/filesystem/FileAttributes;->isBlock()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 111
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 113
    :cond_5
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;
    .locals 2

    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/termux/shared/file/filesystem/FileAttributes;->get(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileAttributes;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/termux/shared/file/filesystem/FileTypes;->getFileType(Lcom/termux/shared/file/filesystem/FileAttributes;)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENOENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get file type for file at path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    .line 95
    :cond_1
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0

    .line 86
    :cond_2
    :goto_0
    sget-object p0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    return-object p0
.end method
