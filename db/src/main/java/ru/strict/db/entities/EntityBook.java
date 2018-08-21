package ru.strict.db.entities;

import ru.strict.db.entities.types.AgeLimit;

import java.util.Date;
import java.util.UUID;

public class EntityBook extends EntityAppNamed {

    private Date yearPublication;
    private String coverPath;
    private UUID publishingId;
    private short countPages;
    private String isbn;
    private AgeLimit agelimit;
    private String description;
    private UUID authorId;
    private String pdfPath;
    private String fb2Path;
    private String mp3Path;
    private String wavPath;

    public EntityBook() {
        super();
    }

    public EntityBook(String caption, Date yearPublication, String coverPath, UUID publishingId, short countPages, String isbn, AgeLimit agelimit, String description, UUID authorId, String pdfPath, String fb2Path, String mp3Path, String wavPath) {
        super(caption);
        this.yearPublication = yearPublication;
        this.coverPath = coverPath;
        this.publishingId = publishingId;
        this.countPages = countPages;
        this.isbn = isbn;
        this.agelimit = agelimit;
        this.description = description;
        this.authorId = authorId;
        this.pdfPath = pdfPath;
        this.fb2Path = fb2Path;
        this.mp3Path = mp3Path;
        this.wavPath = wavPath;
    }

    public EntityBook(UUID id, String caption, Date yearPublication, String coverPath, UUID publishingId, short countPages, String isbn, AgeLimit agelimit, String description, UUID authorId, String pdfPath, String fb2Path, String mp3Path, String wavPath) {
        super(id, caption);
        this.yearPublication = yearPublication;
        this.coverPath = coverPath;
        this.publishingId = publishingId;
        this.countPages = countPages;
        this.isbn = isbn;
        this.agelimit = agelimit;
        this.description = description;
        this.authorId = authorId;
        this.pdfPath = pdfPath;
        this.fb2Path = fb2Path;
        this.mp3Path = mp3Path;
        this.wavPath = wavPath;
    }

    public Date getYearPublication() {
        return yearPublication;
    }

    public void setYearPublication(Date yearPublication) {
        this.yearPublication = yearPublication;
    }

    public String getCoverPath() {
        return coverPath;
    }

    public void setCoverPath(String coverPath) {
        this.coverPath = coverPath;
    }

    public UUID getPublishingId() {
        return publishingId;
    }

    public void setPublishingId(UUID publishingId) {
        this.publishingId = publishingId;
    }

    public short getCountPages() {
        return countPages;
    }

    public void setCountPages(short countPages) {
        this.countPages = countPages;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public AgeLimit getAgelimit() {
        return agelimit;
    }

    public void setAgelimit(AgeLimit agelimit) {
        this.agelimit = agelimit;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public UUID getAuthorId() {
        return authorId;
    }

    public void setAuthorId(UUID authorId) {
        this.authorId = authorId;
    }

    public String getPdfPath() {
        return pdfPath;
    }

    public void setPdfPath(String pdfPath) {
        this.pdfPath = pdfPath;
    }

    public String getFb2Path() {
        return fb2Path;
    }

    public void setFb2Path(String fb2Path) {
        this.fb2Path = fb2Path;
    }

    public String getMp3Path() {
        return mp3Path;
    }

    public void setMp3Path(String mp3Path) {
        this.mp3Path = mp3Path;
    }

    public String getWavPath() {
        return wavPath;
    }

    public void setWavPath(String wavPath) {
        this.wavPath = wavPath;
    }
}
