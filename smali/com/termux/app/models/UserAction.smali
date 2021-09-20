.class public final enum Lcom/termux/app/models/UserAction;
.super Ljava/lang/Enum;
.source "UserAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/app/models/UserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/app/models/UserAction;

.field public static final enum CRASH_REPORT:Lcom/termux/app/models/UserAction;

.field public static final enum PLUGIN_EXECUTION_COMMAND:Lcom/termux/app/models/UserAction;

.field public static final enum REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/termux/app/models/UserAction;

    const-string v1, "PLUGIN_EXECUTION_COMMAND"

    const/4 v2, 0x0

    const-string v3, "plugin execution command"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/app/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/app/models/UserAction;

    .line 6
    new-instance v1, Lcom/termux/app/models/UserAction;

    const-string v3, "CRASH_REPORT"

    const/4 v4, 0x1

    const-string v5, "crash report"

    invoke-direct {v1, v3, v4, v5}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/termux/app/models/UserAction;->CRASH_REPORT:Lcom/termux/app/models/UserAction;

    .line 7
    new-instance v3, Lcom/termux/app/models/UserAction;

    const-string v5, "REPORT_ISSUE_FROM_TRANSCRIPT"

    const/4 v6, 0x2

    const-string v7, "report issue from transcript"

    invoke-direct {v3, v5, v6, v7}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/termux/app/models/UserAction;->REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/termux/app/models/UserAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/termux/app/models/UserAction;->$VALUES:[Lcom/termux/app/models/UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/app/models/UserAction;
    .locals 1

    .line 3
    const-class v0, Lcom/termux/app/models/UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/app/models/UserAction;

    return-object p0
.end method

.method public static values()[Lcom/termux/app/models/UserAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/termux/app/models/UserAction;->$VALUES:[Lcom/termux/app/models/UserAction;

    invoke-virtual {v0}, [Lcom/termux/app/models/UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/app/models/UserAction;

    return-object v0
.end method
