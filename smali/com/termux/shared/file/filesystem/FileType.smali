.class public final enum Lcom/termux/shared/file/filesystem/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/file/filesystem/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum BLOCK:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum FIFO:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum REGULAR:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

.field public static final enum UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 6
    new-instance v0, Lcom/termux/shared/file/filesystem/FileType;

    const-string v1, "NO_EXIST"

    const/4 v2, 0x0

    const-string v3, "no exist"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    .line 7
    new-instance v1, Lcom/termux/shared/file/filesystem/FileType;

    const-string v3, "REGULAR"

    const/4 v4, 0x1

    const-string v5, "regular"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    .line 8
    new-instance v3, Lcom/termux/shared/file/filesystem/FileType;

    const-string v5, "DIRECTORY"

    const/4 v6, 0x2

    const-string v7, "directory"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    .line 9
    new-instance v5, Lcom/termux/shared/file/filesystem/FileType;

    const-string v7, "SYMLINK"

    const/4 v8, 0x3

    const-string v9, "symlink"

    const/4 v10, 0x4

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    .line 10
    new-instance v7, Lcom/termux/shared/file/filesystem/FileType;

    const-string v9, "CHARACTER"

    const-string v11, "character"

    const/16 v12, 0x8

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/termux/shared/file/filesystem/FileType;->CHARACTER:Lcom/termux/shared/file/filesystem/FileType;

    .line 11
    new-instance v9, Lcom/termux/shared/file/filesystem/FileType;

    const-string v11, "FIFO"

    const/4 v13, 0x5

    const-string v14, "fifo"

    const/16 v15, 0x10

    invoke-direct {v9, v11, v13, v14, v15}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/termux/shared/file/filesystem/FileType;->FIFO:Lcom/termux/shared/file/filesystem/FileType;

    .line 12
    new-instance v11, Lcom/termux/shared/file/filesystem/FileType;

    const-string v14, "BLOCK"

    const/4 v15, 0x6

    const-string v13, "block"

    const/16 v10, 0x20

    invoke-direct {v11, v14, v15, v13, v10}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/termux/shared/file/filesystem/FileType;->BLOCK:Lcom/termux/shared/file/filesystem/FileType;

    .line 13
    new-instance v10, Lcom/termux/shared/file/filesystem/FileType;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x7

    const-string v15, "unknown"

    const/16 v8, 0x40

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/termux/shared/file/filesystem/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/termux/shared/file/filesystem/FileType;->UNKNOWN:Lcom/termux/shared/file/filesystem/FileType;

    new-array v8, v12, [Lcom/termux/shared/file/filesystem/FileType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    aput-object v10, v8, v14

    .line 4
    sput-object v8, Lcom/termux/shared/file/filesystem/FileType;->$VALUES:[Lcom/termux/shared/file/filesystem/FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/termux/shared/file/filesystem/FileType;->name:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/termux/shared/file/filesystem/FileType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/file/filesystem/FileType;
    .locals 1

    .line 4
    const-class v0, Lcom/termux/shared/file/filesystem/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/file/filesystem/FileType;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/file/filesystem/FileType;
    .locals 1

    .line 4
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->$VALUES:[Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, [Lcom/termux/shared/file/filesystem/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/file/filesystem/FileType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/termux/shared/file/filesystem/FileType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/termux/shared/file/filesystem/FileType;->value:I

    return v0
.end method
