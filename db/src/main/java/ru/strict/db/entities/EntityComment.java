package ru.strict.db.entities;

import java.util.Date;
import java.util.UUID;

public class EntityComment extends EntityAppBase {

    private String title;
    private String content;
    private Date dateSend;

    public EntityComment() {
        super();
    }

    public EntityComment(String title, String content, Date dateSend) {
        super();
        this.title = title;
        this.content = content;
        this.dateSend = dateSend;
    }

    public EntityComment(UUID id, String title, String content, Date dateSend) {
        super(id);
        this.title = title;
        this.content = content;
        this.dateSend = dateSend;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDateSend() {
        return dateSend;
    }

    public void setDateSend(Date dateSend) {
        this.dateSend = dateSend;
    }
}
