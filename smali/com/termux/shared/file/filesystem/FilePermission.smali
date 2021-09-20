.class public final enum Lcom/termux/shared/file/filesystem/FilePermission;
.super Ljava/lang/Enum;
.source "FilePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/file/filesystem/FilePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

.field public static final enum OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 46
    new-instance v0, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 51
    new-instance v1, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v3, "OWNER_WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 56
    new-instance v3, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v5, "OWNER_EXECUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/termux/shared/file/filesystem/FilePermission;->OWNER_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 61
    new-instance v5, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v7, "GROUP_READ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 66
    new-instance v7, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v9, "GROUP_WRITE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 71
    new-instance v9, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v11, "GROUP_EXECUTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/termux/shared/file/filesystem/FilePermission;->GROUP_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 76
    new-instance v11, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v13, "OTHERS_READ"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_READ:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 81
    new-instance v13, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v15, "OTHERS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_WRITE:Lcom/termux/shared/file/filesystem/FilePermission;

    .line 86
    new-instance v15, Lcom/termux/shared/file/filesystem/FilePermission;

    const-string v14, "OTHERS_EXECUTE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/termux/shared/file/filesystem/FilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/termux/shared/file/filesystem/FilePermission;->OTHERS_EXECUTE:Lcom/termux/shared/file/filesystem/FilePermission;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/termux/shared/file/filesystem/FilePermission;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 41
    sput-object v14, Lcom/termux/shared/file/filesystem/FilePermission;->$VALUES:[Lcom/termux/shared/file/filesystem/FilePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/file/filesystem/FilePermission;
    .locals 1

    .line 41
    const-class v0, Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/file/filesystem/FilePermission;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/file/filesystem/FilePermission;
    .locals 1

    .line 41
    sget-object v0, Lcom/termux/shared/file/filesystem/FilePermission;->$VALUES:[Lcom/termux/shared/file/filesystem/FilePermission;

    invoke-virtual {v0}, [Lcom/termux/shared/file/filesystem/FilePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/file/filesystem/FilePermission;

    return-object v0
.end method
