.class public final Lcom/termux/shared/termux/TermuxConstants;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# static fields
.field public static final TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

.field public static final TERMUX_FONT_FILE:Ljava/io/File;

.field public static final TERMUX_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_STORAGE_HOME_DIR:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 382
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    .line 402
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/etc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/include"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/lib"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/libexec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/share"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/var"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr-staging"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    .line 464
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.config/termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    .line 511
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/termux.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.config/termux/termux.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/colors.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

    .line 527
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/font.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FONT_FILE:Ljava/io/File;

    .line 547
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/boot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/shortcuts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/shortcuts/tasks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/tasker"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method
