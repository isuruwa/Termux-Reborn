.class public Lcom/termux/app/models/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final addReportInfoToMarkdown:Z

.field public final reportString:Ljava/lang/String;

.field public final reportStringPrefix:Ljava/lang/String;

.field public final reportStringSuffix:Ljava/lang/String;

.field public final reportTimestamp:Ljava/lang/String;

.field public final reportTitle:Ljava/lang/String;

.field public final sender:Ljava/lang/String;

.field public final userAction:Lcom/termux/app/models/UserAction;


# direct methods
.method public constructor <init>(Lcom/termux/app/models/UserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/termux/app/models/ReportInfo;->userAction:Lcom/termux/app/models/UserAction;

    .line 31
    iput-object p2, p0, Lcom/termux/app/models/ReportInfo;->sender:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/termux/app/models/ReportInfo;->reportTitle:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/termux/app/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/termux/app/models/ReportInfo;->reportString:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/termux/app/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    .line 36
    iput-boolean p7, p0, Lcom/termux/app/models/ReportInfo;->addReportInfoToMarkdown:Z

    .line 37
    invoke-static {}, Lcom/termux/shared/termux/TermuxUtils;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/app/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    return-void
.end method

.method public static getReportInfoMarkdownString(Lcom/termux/app/models/ReportInfo;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-boolean v1, p0, Lcom/termux/app/models/ReportInfo;->addReportInfoToMarkdown:Z

    if-eqz v1, :cond_1

    const-string v1, "## Report Info\n\n"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/app/models/ReportInfo;->userAction:Lcom/termux/app/models/UserAction;

    const-string v3, "User Action"

    const-string v4, "-"

    invoke-static {v3, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/app/models/ReportInfo;->sender:Ljava/lang/String;

    const-string v3, "Sender"

    invoke-static {v3, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/app/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    const-string v2, "Report Timestamp"

    invoke-static {v2, v1, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n##\n\n"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/termux/app/models/ReportInfo;->reportString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
