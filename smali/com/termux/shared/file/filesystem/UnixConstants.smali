.class public Lcom/termux/shared/file/filesystem/UnixConstants;
.super Ljava/lang/Object;
.source "UnixConstants.java"


# static fields
.field static final S_IAMB:I

.field static final S_IFBLK:I

.field static final S_IFCHR:I

.field static final S_IFDIR:I

.field static final S_IFIFO:I

.field static final S_IFLNK:I

.field static final S_IFMT:I

.field static final S_IFREG:I

.field static final S_IRGRP:I

.field static final S_IROTH:I

.field static final S_IRUSR:I

.field static final S_IWGRP:I

.field static final S_IWOTH:I

.field static final S_IWUSR:I

.field static final S_IXGRP:I

.field static final S_IXOTH:I

.field static final S_IXUSR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 45
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    .line 47
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    .line 49
    sget v0, Landroid/system/OsConstants;->O_APPEND:I

    .line 51
    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    .line 53
    sget v0, Landroid/system/OsConstants;->O_EXCL:I

    .line 55
    sget v0, Landroid/system/OsConstants;->O_TRUNC:I

    .line 57
    sget v0, Landroid/system/OsConstants;->O_SYNC:I

    .line 59
    sget v0, Landroid/system/OsConstants;->O_DSYNC:I

    .line 61
    sget v0, Landroid/system/OsConstants;->O_NOFOLLOW:I

    .line 63
    invoke-static {}, Lcom/termux/shared/file/filesystem/UnixConstants;->get_S_IAMB()I

    move-result v0

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IAMB:I

    .line 65
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IRUSR:I

    .line 67
    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IWUSR:I

    .line 69
    sget v0, Landroid/system/OsConstants;->S_IXUSR:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IXUSR:I

    .line 71
    sget v0, Landroid/system/OsConstants;->S_IRGRP:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IRGRP:I

    .line 73
    sget v0, Landroid/system/OsConstants;->S_IWGRP:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IWGRP:I

    .line 75
    sget v0, Landroid/system/OsConstants;->S_IXGRP:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IXGRP:I

    .line 77
    sget v0, Landroid/system/OsConstants;->S_IROTH:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IROTH:I

    .line 79
    sget v0, Landroid/system/OsConstants;->S_IWOTH:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IWOTH:I

    .line 81
    sget v0, Landroid/system/OsConstants;->S_IXOTH:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IXOTH:I

    .line 83
    sget v0, Landroid/system/OsConstants;->S_IFMT:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFMT:I

    .line 85
    sget v0, Landroid/system/OsConstants;->S_IFREG:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFREG:I

    .line 87
    sget v0, Landroid/system/OsConstants;->S_IFDIR:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFDIR:I

    .line 89
    sget v0, Landroid/system/OsConstants;->S_IFLNK:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFLNK:I

    .line 91
    sget v0, Landroid/system/OsConstants;->S_IFCHR:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFCHR:I

    .line 93
    sget v0, Landroid/system/OsConstants;->S_IFBLK:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFBLK:I

    .line 95
    sget v0, Landroid/system/OsConstants;->S_IFIFO:I

    sput v0, Lcom/termux/shared/file/filesystem/UnixConstants;->S_IFIFO:I

    .line 97
    sget v0, Landroid/system/OsConstants;->R_OK:I

    .line 99
    sget v0, Landroid/system/OsConstants;->W_OK:I

    .line 101
    sget v0, Landroid/system/OsConstants;->X_OK:I

    .line 103
    sget v0, Landroid/system/OsConstants;->F_OK:I

    .line 105
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    .line 107
    sget v0, Landroid/system/OsConstants;->EACCES:I

    .line 109
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    .line 111
    sget v0, Landroid/system/OsConstants;->ENOTDIR:I

    .line 113
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    .line 115
    sget v0, Landroid/system/OsConstants;->EXDEV:I

    .line 117
    sget v0, Landroid/system/OsConstants;->EISDIR:I

    .line 119
    sget v0, Landroid/system/OsConstants;->ENOTEMPTY:I

    .line 121
    sget v0, Landroid/system/OsConstants;->ENOSPC:I

    .line 123
    sget v0, Landroid/system/OsConstants;->EAGAIN:I

    .line 125
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    .line 127
    sget v0, Landroid/system/OsConstants;->ELOOP:I

    .line 129
    sget v0, Landroid/system/OsConstants;->EROFS:I

    .line 131
    sget v0, Landroid/system/OsConstants;->ENODATA:I

    .line 133
    sget v0, Landroid/system/OsConstants;->ERANGE:I

    .line 135
    sget v0, Landroid/system/OsConstants;->EMFILE:I

    return-void
.end method

.method private static get_S_IAMB()I
    .locals 2

    .line 140
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    sget v1, Landroid/system/OsConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v0, v1

    return v0
.end method
