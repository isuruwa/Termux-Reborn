.class final Lcom/termux/app/TermuxInstaller$1;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$PREFIX_FILE:Ljava/io/File;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$1;->val$PREFIX_FILE:Ljava/io/File;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic lambda$null$1(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 173
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 174
    invoke-static {p0, p1}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$run$2(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 168
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0030

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$tQOO4BPyzyiPDzPVpLiAAR_Cvh0;

    invoke-direct {v2, p0}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$tQOO4BPyzyiPDzPVpLiAAR_Cvh0;-><init>(Landroid/app/Activity;)V

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0034

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$9chPwaTxptlVSeMi5aWcSZO2dmI;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$9chPwaTxptlVSeMi5aWcSZO2dmI;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$run$3(Landroid/app/ProgressDialog;)V
    .locals 0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "/data/data/com.termux/files/usr-staging"

    const-string v1, "TermuxInstaller"

    :try_start_0
    const-string v2, "Installing Termux bootstrap packages."

    .line 87
    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    const-string v4, "prefix staging directory"

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v5}, Lcom/termux/shared/file/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 101
    iget-object v3, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    const-string v4, "prefix directory"

    const-string v6, "/data/data/com.termux/files/usr"

    invoke-static {v3, v4, v6, v5}, Lcom/termux/shared/file/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    const-string v3, "Extracting bootstrap zip to prefix staging directory \"/data/data/com.termux/files/usr-staging\"."

    .line 106
    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1fa0

    new-array v3, v3, [B

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0x32

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->loadZipBytes()[B

    move-result-object v6

    .line 112
    new-instance v7, Ljava/util/zip/ZipInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 114
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 115
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SYMLINKS.txt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 116
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 118
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v10, "\u2190"

    .line 119
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 120
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 122
    aget-object v8, v10, v9

    .line 123
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/com.termux/files/usr-staging/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v10, v5

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 124
    invoke-static {v8, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v8, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/termux/app/TermuxInstaller;->access$000(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_1

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed symlink line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 130
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    .line 133
    iget-object v11, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    if-eqz v6, :cond_3

    move-object v12, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    :goto_2
    invoke-static {v11, v12}, Lcom/termux/app/TermuxInstaller;->access$000(Landroid/content/Context;Ljava/io/File;)V

    if-nez v6, :cond_0

    .line 136
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 138
    :goto_3
    :try_start_2
    invoke-virtual {v7, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 139
    invoke-virtual {v6, v3, v9, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 140
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    const-string v6, "bin/"

    .line 141
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "libexec"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "lib/apt/methods"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1c0

    invoke-static {v6, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 136
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    .line 140
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 148
    :cond_6
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    .line 150
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 152
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 153
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v0, "Moving prefix staging to prefix directory."

    .line 156
    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$PREFIX_FILE:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Bootstrap packages installed successfully."

    .line 162
    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 181
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;

    invoke-direct {v2, v1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;-><init>(Landroid/app/ProgressDialog;)V

    goto :goto_7

    .line 159
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Moving prefix staging to prefix directory failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No SYMLINKS.txt encountered"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_3
    move-exception v0

    .line 112
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v2

    .line 148
    :try_start_a
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v3

    :try_start_b
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2

    .line 103
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_c
    const-string v2, "Bootstrap error"

    .line 165
    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$jUl8Y13qJ1Hr8wpcbyd3Qe2yUEg;

    invoke-direct {v2, v0, v1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$jUl8Y13qJ1Hr8wpcbyd3Qe2yUEg;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 181
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;

    invoke-direct {v2, v1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;-><init>(Landroid/app/ProgressDialog;)V

    :goto_7
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_8
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    throw v0
.end method
